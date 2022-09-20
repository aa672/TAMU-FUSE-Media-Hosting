require 'rails_helper'

RSpec.describe "module_sections/show", type: :view do
  before(:each) do
    @module_section = assign(:module_section, ModuleSection.create!(
      module_id: 2,
      module_name: "Module Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Module Name/)
  end
end
