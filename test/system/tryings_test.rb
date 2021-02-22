require "application_system_test_case"

class TryingsTest < ApplicationSystemTestCase
  setup do
    @trying = tryings(:one)
  end

  test "visiting the index" do
    visit tryings_url
    assert_selector "h1", text: "Tryings"
  end

  test "creating a Trying" do
    visit tryings_url
    click_on "New Trying"

    fill_in "One", with: @trying.one
    check "Three" if @trying.three
    fill_in "Two", with: @trying.two
    click_on "Create Trying"

    assert_text "Trying was successfully created"
    click_on "Back"
  end

  test "updating a Trying" do
    visit tryings_url
    click_on "Edit", match: :first

    fill_in "One", with: @trying.one
    check "Three" if @trying.three
    fill_in "Two", with: @trying.two
    click_on "Update Trying"

    assert_text "Trying was successfully updated"
    click_on "Back"
  end

  test "destroying a Trying" do
    visit tryings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trying was successfully destroyed"
  end
end
