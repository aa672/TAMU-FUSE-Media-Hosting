require 'rails_helper'

RSpec.describe "module_sections/edit", type: :view do
  before(:each) do
    @module_section = assign(:module_section, ModuleSection.create!(
      module_name: "MyString"
    ))
  end

  it "renders the edit module_section form" do
    render

    assert_select "form[action=?][method=?]", module_section_path(@module_section), "post" do

      assert_select "input[name=?]", "module_section[module_name]"
    end
  end
end
