require "application_system_test_case"

class UpcomingShowsTest < ApplicationSystemTestCase
  setup do
    @upcoming_show = upcoming_shows(:one)
  end

  test "visiting the index" do
    visit upcoming_shows_url
    assert_selector "h1", text: "Upcoming shows"
  end

  test "should create upcoming show" do
    visit upcoming_shows_url
    click_on "New upcoming show"

    fill_in "End time", with: @upcoming_show.end_time
    fill_in "Name", with: @upcoming_show.name
    fill_in "Start time", with: @upcoming_show.start_time
    click_on "Create Upcoming show"

    assert_text "Upcoming show was successfully created"
    click_on "Back"
  end

  test "should update Upcoming show" do
    visit upcoming_show_url(@upcoming_show)
    click_on "Edit this upcoming show", match: :first

    fill_in "End time", with: @upcoming_show.end_time
    fill_in "Name", with: @upcoming_show.name
    fill_in "Start time", with: @upcoming_show.start_time
    click_on "Update Upcoming show"

    assert_text "Upcoming show was successfully updated"
    click_on "Back"
  end

  test "should destroy Upcoming show" do
    visit upcoming_show_url(@upcoming_show)
    click_on "Destroy this upcoming show", match: :first

    assert_text "Upcoming show was successfully destroyed"
  end
end
