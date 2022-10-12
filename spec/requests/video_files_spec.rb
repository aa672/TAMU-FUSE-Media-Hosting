require 'rails_helper'

RSpec.describe "VideoFiles", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/video_files/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/video_files/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/video_files/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/video_files/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
