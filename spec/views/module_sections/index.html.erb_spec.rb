require 'rails_helper'

RSpec.describe "module_sections/index", type: :view do
  before(:each) do
    assign(:module_sections, [
      ModuleSection.create!(
        module_name: "Module Name"
      ),
      ModuleSection.create!(
        module_name: "Module Name"
      )
    ])
  end

  it "renders a list of module_sections" do
    render
    assert_select "tr>td", text: "Module Name".to_s, count: 2
  end
end
