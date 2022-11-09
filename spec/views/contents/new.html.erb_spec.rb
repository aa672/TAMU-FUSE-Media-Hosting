require 'rails_helper'

RSpec.describe "contents/new", type: :view do
  before(:each) do
    @content = assign(:contents, Content.create!(
      title: "test",
      description: "This is a test",
      attachment: "test.jpg",
      content_id: "1",
      content_type: "jpg",
      content_storage_link: "testlink"
    ))
  end

  it "renders new content form" do
    render

    assert_select "form[action=?][method=?]", content_path(@content), "post" do

      assert_select "input[name=?]", "content[title]"

      assert_select "input[name=?]", "content[description]"
      
      assert_select "input[name=?]", "content[attachment]"
      
      assert_select "input[name=?]", "content[content_id]"
      
      assert_select "input[name=?]", "content[content_type]"

      assert_select "input[name=?]", "content[content_storage_link]"
    end
  end
end
