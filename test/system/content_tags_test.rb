require "application_system_test_case"

class ContentTagsTest < ApplicationSystemTestCase
  setup do
    @content_tag = content_tags(:one)
  end

  test "visiting the index" do
    visit content_tags_url
    assert_selector "h1", text: "Content Tags"
  end

  test "creating a Content tag" do
    visit content_tags_url
    click_on "New Content Tag"

    fill_in "Contenttag", with: @content_tag.contentTag_id
    fill_in "Content", with: @content_tag.content_id
    fill_in "Tag", with: @content_tag.tag_id
    click_on "Create Content tag"

    assert_text "Content tag was successfully created"
    click_on "Back"
  end

  test "updating a Content tag" do
    visit content_tags_url
    click_on "Edit", match: :first

    fill_in "Contenttag", with: @content_tag.contentTag_id
    fill_in "Content", with: @content_tag.content_id
    fill_in "Tag", with: @content_tag.tag_id
    click_on "Update Content tag"

    assert_text "Content tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Content tag" do
    visit content_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Content tag was successfully destroyed"
  end
end
