 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/module_sections", type: :request do
  
  # ModuleSection. As you add validations to ModuleSection, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ModuleSection.create! valid_attributes
      get module_sections_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      module_section = ModuleSection.create! valid_attributes
      get module_section_url(module_section)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_module_section_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      module_section = ModuleSection.create! valid_attributes
      get edit_module_section_url(module_section)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ModuleSection" do
        expect {
          post module_sections_url, params: { module_section: valid_attributes }
        }.to change(ModuleSection, :count).by(1)
      end

      it "redirects to the created module_section" do
        post module_sections_url, params: { module_section: valid_attributes }
        expect(response).to redirect_to(module_section_url(ModuleSection.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ModuleSection" do
        expect {
          post module_sections_url, params: { module_section: invalid_attributes }
        }.to change(ModuleSection, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post module_sections_url, params: { module_section: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested module_section" do
        module_section = ModuleSection.create! valid_attributes
        patch module_section_url(module_section), params: { module_section: new_attributes }
        module_section.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the module_section" do
        module_section = ModuleSection.create! valid_attributes
        patch module_section_url(module_section), params: { module_section: new_attributes }
        module_section.reload
        expect(response).to redirect_to(module_section_url(module_section))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        module_section = ModuleSection.create! valid_attributes
        patch module_section_url(module_section), params: { module_section: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested module_section" do
      module_section = ModuleSection.create! valid_attributes
      expect {
        delete module_section_url(module_section)
      }.to change(ModuleSection, :count).by(-1)
    end

    it "redirects to the module_sections list" do
      module_section = ModuleSection.create! valid_attributes
      delete module_section_url(module_section)
      expect(response).to redirect_to(module_sections_url)
    end
  end
end
