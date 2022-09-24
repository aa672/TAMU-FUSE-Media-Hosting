require "test_helper"

class ContentTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_tag = content_tags(:one)
  end

  test "should get index" do
    get content_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_content_tag_url
    assert_response :success
  end

  test "should create content_tag" do
    assert_difference('ContentTag.count') do
      post content_tags_url, params: { content_tag: { contentTag_id: @content_tag.contentTag_id, content_id: @content_tag.content_id, tag_id: @content_tag.tag_id } }
    end

    assert_redirected_to content_tag_url(ContentTag.last)
  end

  test "should show content_tag" do
    get content_tag_url(@content_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_content_tag_url(@content_tag)
    assert_response :success
  end

  test "should update content_tag" do
    patch content_tag_url(@content_tag), params: { content_tag: { contentTag_id: @content_tag.contentTag_id, content_id: @content_tag.content_id, tag_id: @content_tag.tag_id } }
    assert_redirected_to content_tag_url(@content_tag)
  end

  test "should destroy content_tag" do
    assert_difference('ContentTag.count', -1) do
      delete content_tag_url(@content_tag)
    end

    assert_redirected_to content_tags_url
  end
end
