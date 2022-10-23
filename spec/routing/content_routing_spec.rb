require "rails_helper"

RSpec.describe ContentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/contents").to route_to("contents#index")
    end

    it "routes to #new" do
      expect(get: "/contents/new").to route_to("contents#new")
    end

    it "routes to #edit" do
      expect(get: "/contents/:id/edit").to route_to("contents#edit")
    end

    it "routes to #create" do
      expect(post: "/contents").to route_to("contents#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/contents/:id").to route_to("contents#update")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/contents/:id").to route_to("contents#update")
    end

    it "routes to #destroy" do
      expect(delete: "/contents/:id").to route_to("contents#destroy")
    end
  end
end
