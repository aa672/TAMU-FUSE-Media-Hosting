require 'rails_helper'

RSpec.describe "internship_ops/index", type: :view do
  before(:each) do
    assign(:internship_ops, [
      InternshipOp.create!(
        internship_name: "Internship Name",
        company_name: "Company Name",
        contact_name: "Contact Name",
        contact_email: "Contact Email",
        company_link: "Company Link",
        description: "MyText"
      ),
      InternshipOp.create!(
        internship_name: "Internship Name",
        company_name: "Company Name",
        contact_name: "Contact Name",
        contact_email: "Contact Email",
        company_link: "Company Link",
        description: "MyText"
      )
    ])
  end

  it "renders a list of internship_ops" do
    render
    assert_select "tr>td", text: "Internship Name".to_s, count: 2
    assert_select "tr>td", text: "Company Name".to_s, count: 2
    assert_select "tr>td", text: "Contact name".to_s, count: 0
    assert_select "tr>td", text: "Contact email".to_s, count: 0
    assert_select "tr>td", text: "Company link".to_s, count: 0
    assert_select "tr>td", text: "MyText".to_s, count: 0
  end
end
