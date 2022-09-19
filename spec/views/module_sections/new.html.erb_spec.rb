require 'rails_helper'

RSpec.describe "module_sections/new", type: :view do
  before(:each) do
    assign(:module_section, ModuleSection.new(
      module_id: 1,
      module_name: "MyString"
    ))
  end

  it "renders new module_section form" do
    render

    assert_select "form[action=?][method=?]", module_sections_path, "post" do

      assert_select "input[name=?]", "module_section[module_id]"

      assert_select "input[name=?]", "module_section[module_name]"
    end
  end
end
