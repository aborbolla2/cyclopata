require "application_system_test_case"

class CoachTypesTest < ApplicationSystemTestCase
  setup do
    @coach_type = coach_types(:one)
  end

  test "visiting the index" do
    visit coach_types_url
    assert_selector "h1", text: "Coach Types"
  end

  test "creating a Coach type" do
    visit coach_types_url
    click_on "New Coach Type"

    click_on "Create Coach type"

    assert_text "Coach type was successfully created"
    click_on "Back"
  end

  test "updating a Coach type" do
    visit coach_types_url
    click_on "Edit", match: :first

    click_on "Update Coach type"

    assert_text "Coach type was successfully updated"
    click_on "Back"
  end

  test "destroying a Coach type" do
    visit coach_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coach type was successfully destroyed"
  end
end
