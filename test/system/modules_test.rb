require "application_system_test_case"

class ModulesTest < ApplicationSystemTestCase
  setup do
    @module = modules(:one)
  end

  test "visiting the index" do
    visit modules_url
    assert_selector "h1", text: "Modules"
  end

  test "creating a Module" do
    visit modules_url
    click_on "New Module"

    fill_in "Module", with: @module.module_id
    fill_in "Module name", with: @module.module_name
    click_on "Create Module"

    assert_text "Module was successfully created"
    click_on "Back"
  end

  test "updating a Module" do
    visit modules_url
    click_on "Edit", match: :first

    fill_in "Module", with: @module.module_id
    fill_in "Module name", with: @module.module_name
    click_on "Update Module"

    assert_text "Module was successfully updated"
    click_on "Back"
  end

  test "destroying a Module" do
    visit modules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Module was successfully destroyed"
  end
end
