require 'rails_helper'

RSpec.describe "internship_ops/index", type: :view do
  before(:each) do
    assign(:internship_ops, [
      InternshipOp.create!(
        internship_id: 2,
        internship_name: "Internship Name",
        company_name: "Company Name",
        contact_name: "Contact Name",
        contact_email: "Contact Email",
        company_link: "Company Link",
        description: "MyText"
      ),
      InternshipOp.create!(
        internship_id: 2,
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
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Internship Name".to_s, count: 2
    assert_select "tr>td", text: "Company Name".to_s, count: 2
    assert_select "tr>td", text: "Contact Name".to_s, count: 2
    assert_select "tr>td", text: "Contact Email".to_s, count: 2
    assert_select "tr>td", text: "Company Link".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
