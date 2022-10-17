require 'rails_helper'

RSpec.describe "content/index", type: :view do
  before(:each) do
    @content = assign(:content, content.create!(
      title: "test",
      description: "This is a test",
      attachment: "test.jpg",
      content_id: "1",
      content_type: "jpg",
      content_storage_link: "testlink"
    ))
  end

  it "renders a list of content" do
    render
    assert_select "tr>td", text: 1.to_s, count: 1
    assert_select "tr>td", text: "Title".to_s, count: 1
  end
end
