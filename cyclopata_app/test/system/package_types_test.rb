require "application_system_test_case"

class PackageTypesTest < ApplicationSystemTestCase
  setup do
    @package_type = package_types(:one)
  end

  test "visiting the index" do
    visit package_types_url
    assert_selector "h1", text: "Package Types"
  end

  test "creating a Package type" do
    visit package_types_url
    click_on "New Package Type"

    click_on "Create Package type"

    assert_text "Package type was successfully created"
    click_on "Back"
  end

  test "updating a Package type" do
    visit package_types_url
    click_on "Edit", match: :first

    click_on "Update Package type"

    assert_text "Package type was successfully updated"
    click_on "Back"
  end

  test "destroying a Package type" do
    visit package_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Package type was successfully destroyed"
  end
end
