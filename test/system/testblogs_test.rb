require "application_system_test_case"

class TestblogsTest < ApplicationSystemTestCase
  setup do
    @testblog = testblogs(:one)
  end

  test "visiting the index" do
    visit testblogs_url
    assert_selector "h1", text: "Testblogs"
  end

  test "creating a Testblog" do
    visit testblogs_url
    click_on "New Testblog"

    fill_in "Email", with: @testblog.Email
    fill_in "Message", with: @testblog.Message
    fill_in "Title", with: @testblog.Title
    click_on "Create Testblog"

    assert_text "Testblog was successfully created"
    click_on "Back"
  end

  test "updating a Testblog" do
    visit testblogs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @testblog.Email
    fill_in "Message", with: @testblog.Message
    fill_in "Title", with: @testblog.Title
    click_on "Update Testblog"

    assert_text "Testblog was successfully updated"
    click_on "Back"
  end

  test "destroying a Testblog" do
    visit testblogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testblog was successfully destroyed"
  end
end
