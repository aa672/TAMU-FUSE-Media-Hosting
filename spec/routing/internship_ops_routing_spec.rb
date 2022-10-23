require "rails_helper"

RSpec.describe InternshipOpsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/internship_ops").to route_to("internship_ops#index")
    end

    it "routes to #new" do
      expect(get: "/internship_ops/new").to route_to("internship_ops#new")
    end

    it "routes to #show" do
      expect(get: "/internship_ops/1").to route_to("internship_ops#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/internship_ops/1/edit").to route_to("internship_ops#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/internship_ops").to route_to("internship_ops#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/internship_ops/1").to route_to("internship_ops#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/internship_ops/1").to route_to("internship_ops#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/internship_ops/1").to route_to("internship_ops#destroy", id: "1")
    end
  end
end
