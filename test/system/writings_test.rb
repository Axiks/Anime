require "application_system_test_case"

class WritingsTest < ApplicationSystemTestCase
  setup do
    @writing = writings(:one)
  end

  test "visiting the index" do
    visit writings_url
    assert_selector "h1", text: "Writings"
  end

  test "creating a Writing" do
    visit writings_url
    click_on "New Writing"

    click_on "Create Writing"

    assert_text "Writing was successfully created"
    click_on "Back"
  end

  test "updating a Writing" do
    visit writings_url
    click_on "Edit", match: :first

    click_on "Update Writing"

    assert_text "Writing was successfully updated"
    click_on "Back"
  end

  test "destroying a Writing" do
    visit writings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Writing was successfully destroyed"
  end
end
