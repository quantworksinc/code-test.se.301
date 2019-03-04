require "application_system_test_case"

class FootsTest < ApplicationSystemTestCase
  setup do
    @foot = foots(:one)
  end

  test "visiting the index" do
    visit foots_url
    assert_selector "h1", text: "Foots"
  end

  test "creating a Foot" do
    visit foots_url
    click_on "New Foot"

    fill_in "Date entry", with: @foot.date_entry
    fill_in "Number", with: @foot.number
    click_on "Create Foot"

    assert_text "Foot was successfully created"
    click_on "Back"
  end

  test "updating a Foot" do
    visit foots_url
    click_on "Edit", match: :first

    fill_in "Date entry", with: @foot.date_entry
    fill_in "Number", with: @foot.number
    click_on "Update Foot"

    assert_text "Foot was successfully updated"
    click_on "Back"
  end

  test "destroying a Foot" do
    visit foots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foot was successfully destroyed"
  end
end
