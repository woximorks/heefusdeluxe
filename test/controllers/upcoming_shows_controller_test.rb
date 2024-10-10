require "test_helper"

class UpcomingShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upcoming_show = upcoming_shows(:one)
  end

  test "should get index" do
    get upcoming_shows_url
    assert_response :success
  end

  test "should get new" do
    get new_upcoming_show_url
    assert_response :success
  end

  test "should create upcoming_show" do
    assert_difference("UpcomingShow.count") do
      post upcoming_shows_url, params: { upcoming_show: { end_time: @upcoming_show.end_time, name: @upcoming_show.name, start_time: @upcoming_show.start_time } }
    end

    assert_redirected_to upcoming_show_url(UpcomingShow.last)
  end

  test "should show upcoming_show" do
    get upcoming_show_url(@upcoming_show)
    assert_response :success
  end

  test "should get edit" do
    get edit_upcoming_show_url(@upcoming_show)
    assert_response :success
  end

  test "should update upcoming_show" do
    patch upcoming_show_url(@upcoming_show), params: { upcoming_show: { end_time: @upcoming_show.end_time, name: @upcoming_show.name, start_time: @upcoming_show.start_time } }
    assert_redirected_to upcoming_show_url(@upcoming_show)
  end

  test "should destroy upcoming_show" do
    assert_difference("UpcomingShow.count", -1) do
      delete upcoming_show_url(@upcoming_show)
    end

    assert_redirected_to upcoming_shows_url
  end
end
