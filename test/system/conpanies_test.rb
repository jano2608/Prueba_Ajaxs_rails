require "application_system_test_case"

class ConpaniesTest < ApplicationSystemTestCase
  setup do
    @conpany = conpanies(:one)
  end

  test "visiting the index" do
    visit conpanies_url
    assert_selector "h1", text: "Conpanies"
  end

  test "creating a Conpany" do
    visit conpanies_url
    click_on "New Conpany"

    fill_in "Name", with: @conpany.name
    click_on "Create Conpany"

    assert_text "Conpany was successfully created"
    click_on "Back"
  end

  test "updating a Conpany" do
    visit conpanies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @conpany.name
    click_on "Update Conpany"

    assert_text "Conpany was successfully updated"
    click_on "Back"
  end

  test "destroying a Conpany" do
    visit conpanies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conpany was successfully destroyed"
  end
end
