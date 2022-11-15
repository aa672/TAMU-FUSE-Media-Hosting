require 'rails_helper'

RSpec.describe "contents/index", type: :view do
  before(:each) do
    @content = assign(:contents, [
      Content.create!(
      title: "test",
      description: "This is a test",
      attachment: "test.jpg",
      content_type: "jpg"
      )
    ])
  end

  it "renders a list of content" do
    render
    assert_select "tr>td", text: 'test'.to_s, count: 1
    assert_select "tr>td", text: 'this is a test'.to_s, count: 0
    assert_select "tr>td", text: 'test.jpg'.to_s, count: 0
    assert_select "tr>td", text: 'jpg'.to_s, count: 1
  end
end
