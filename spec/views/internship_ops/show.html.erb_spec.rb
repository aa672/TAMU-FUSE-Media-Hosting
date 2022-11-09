require 'rails_helper'

RSpec.describe "internship_ops/show", type: :view do
  before(:each) do
    @internship_op = assign(:internship_op, InternshipOp.create!(
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
    expect(rendered).to match(/Internship Name/)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/Company Link/)
    expect(rendered).to match(/MyText/)
  end
end
