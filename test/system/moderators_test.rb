require "application_system_test_case"

class ModeratorsTest < ApplicationSystemTestCase
  setup do
    @moderator = moderators(:one)
  end

  test "visiting the index" do
    visit moderators_url
    assert_selector "h1", text: "Moderators"
  end

  test "creating a Moderator" do
    visit moderators_url
    click_on "New Moderator"

    fill_in "Email", with: @moderator.email
    fill_in "Name", with: @moderator.name
    click_on "Create Moderator"

    assert_text "Moderator was successfully created"
    click_on "Back"
  end

  test "updating a Moderator" do
    visit moderators_url
    click_on "Edit", match: :first

    fill_in "Email", with: @moderator.email
    fill_in "Name", with: @moderator.name
    click_on "Update Moderator"

    assert_text "Moderator was successfully updated"
    click_on "Back"
  end

  test "destroying a Moderator" do
    visit moderators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Moderator was successfully destroyed"
  end
end
