require 'rails_helper'

RSpec.describe "internships/edit", type: :view do
  before(:each) do
    @internship = assign(:internship, Internship.create!(
      internship_id: 1,
      internship_name: "MyString",
      company_name: "MyString",
      contact_name: "MyString",
      contact_email: "MyString",
      company_link: "MyString",
      description: "MyText"
    ))
  end

  it "renders the edit internship form" do
    render

    assert_select "form[action=?][method=?]", internship_path(@internship), "post" do

      assert_select "input[name=?]", "internship[internship_id]"

      assert_select "input[name=?]", "internship[internship_name]"

      assert_select "input[name=?]", "internship[company_name]"

      assert_select "input[name=?]", "internship[contact_name]"

      assert_select "input[name=?]", "internship[contact_email]"

      assert_select "input[name=?]", "internship[company_link]"

      assert_select "textarea[name=?]", "internship[description]"
    end
  end
end
