require 'google/apis/youtube_v3'
require 'google/api_client/client_secrets'

class YoutubeSessionsController < ApplicationController
    def new
        redirect_to auth_client.authorization_uri.to_s
    end

    def callback
        auth_client.code = params[:code]
        auth_client.fetch_access_token!
        auth_client.client_secret = nil

        #store the auth client creds in the db
        session[:credentials] = auth_client.to_json
        YoutubeSession.create!(credentials: auth_client)

        redirect_to '/'
    end

    def auth_client
        @_auth_client ||= begin
            client_secrets = Google::APIClient::ClientSecrets.new(
                {
                    "web": {
                        "client_id": Rails.application.credentials.dig(:youtube, :client_id),
                        "project_id": "tamu-fuse-media-hosting",
                        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
                        "token_uri": "https://oauth2.googleapis.com/token",
                        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth/v1/certs",
                        "client_secret": Rails.application.credentials.dig(:youtube, :client_secret),
                        "redirect_uris": [
                            redirect_uri
                        ]
                    }
                }
            )
            auth_client = client_secrets.to_authorization
            auth_client.update!(
                scope: 'https://www.googleapis.com/auth/youtube.force-ssl',
                redirect_uri: redirect_uri, 
                additional_parameters: {
                    access_type: 'offline',
                    include_granted_scopes: true,
                }
            )
            auth_client
        end
    end

    def redirect_uri
        'http://localhost:3000/youtube_sessions/callback'
    end

    def create
        y = youtube_sessions.new(current_user.youtube_sessions.last)
        video = y.upload_video(
            params[:file],
            "Test Video",
            "This is a test to see if I can upload from API"
        )
        render json: video
    end

    def upload_video(file, title, description)
        status = Google::Apis::YoutubeV3::VideoStatus.new(
            privacy_status: 'unlisted',
        )
        snippet = Google::Apis::YoutubeV3::VideoSnippet.new(
            title: title,
            description: description,
        )
        video_object = Google::Apis::YoutubeV3::Video.new(
            status: status,
            snipet: snippet,
        )
        service.insert_video(
            'id,snippet,status',
            video_object,
            notify_subscribers: false,
            upload_source: file,
            content_type: 'video/mp4',
            options: {
                authorization: auth_client
            }
        )
    end

    def service
        @service ||= Google::Apis::YoutubeV3::YouTubeService.new
    end
end
