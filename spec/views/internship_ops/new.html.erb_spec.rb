require 'rails_helper'

RSpec.describe "internship_ops/new", type: :view do
  before(:each) do
    assign(:internship_op, InternshipOp.new(
      internship_name: "MyString",
      company_name: "MyString",
      contact_name: "MyString",
      contact_email: "MyString",
      company_link: "MyString",
      description: "MyText"
    ))
  end

  it "renders new internship_op form" do
    render

    assert_select "form[action=?][method=?]", internship_ops_path, "post" do

      assert_select "input[name=?]", "internship_op[internship_name]"

      assert_select "input[name=?]", "internship_op[company_name]"

      assert_select "input[name=?]", "internship_op[contact_name]"

      assert_select "input[name=?]", "internship_op[contact_email]"

      assert_select "input[name=?]", "internship_op[company_link]"

      assert_select "textarea[name=?]", "internship_op[description]"
    end
  end
end
