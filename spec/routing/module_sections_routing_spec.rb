require "rails_helper"

RSpec.describe ModuleSectionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/module_sections").to route_to("module_sections#index")
    end

    it "routes to #new" do
      expect(get: "/module_sections/new").to route_to("module_sections#new")
    end

    it "routes to #show" do
      expect(get: "/module_sections/1").to route_to("module_sections#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/module_sections/1/edit").to route_to("module_sections#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/module_sections").to route_to("module_sections#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/module_sections/1").to route_to("module_sections#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/module_sections/1").to route_to("module_sections#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/module_sections/1").to route_to("module_sections#destroy", id: "1")
    end
  end
end
