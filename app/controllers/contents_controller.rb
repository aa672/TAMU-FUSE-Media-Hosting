class ContentsController < ApplicationController
  before_action :set_content, only: %i[ show edit update destroy ]

  # GET /contents or /contents.json
  def index
    @contents = Content.all
  end

  # GET /contents/1 or /contents/1.json
  def show
  end

  # GET /contents/new
  def new
    @content = Content.new
  end

  # GET /contents/1/edit
  def edit
  end

  # POST /contents or /contents.json
  def create
    @content = Content.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to content_url(@content), notice: "Content was successfully created." }
        format.json { render :show, status: :created, location: @content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contents/1 or /contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to content_url(@content), notice: "Content was successfully updated." }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1 or /contents/1.json
  def destroy
    @content.destroy

    respond_to do |format|
      format.html { redirect_to contents_url, notice: "Content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  #Oauth stuff
  def callback
    auth_client.code = params[:code]
    auth_client.fetch_access_token!
    auth_client.client_secret = nil

    #store the auth client creds in the db
    session[:credentials] = auth_client.to_json

    redirect_to '/contents/new'
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
    #'http://localhost:3000/contents/callback'
    'https://stage-test-tamu-fuse.herokuapp.com/contents/callback'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def content_params
      params.require(:content).permit(:content_id, :content_type, :content_storage_link)
    end
end
