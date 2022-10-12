require 'rails_helper'

RSpec.describe "internships/show", type: :view do
  before(:each) do
    @internship = assign(:internship, Internship.create!(
      internship_id: 2,
      module_sections: nil,
      internship_name: "Internship Name",
      company_name: "Company Name",
      contact_name: "Contact Name",
      contact_email: "Contact Email",
      company_link: "Company Link",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Internship Name/)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/Company Link/)
    expect(rendered).to match(/MyText/)
  end
end
