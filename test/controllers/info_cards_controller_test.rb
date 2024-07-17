require "test_helper"

class InfoCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info_card = info_cards(:one)
  end

  test "should get index" do
    get info_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_info_card_url
    assert_response :success
  end

  test "should create info_card" do
    assert_difference("InfoCard.count") do
      post info_cards_url, params: { info_card: { info_card_description: @info_card.info_card_description, info_card_image_url: @info_card.info_card_image_url, info_card_title: @info_card.info_card_title, info_card_type: @info_card.info_card_type } }
    end

    assert_redirected_to info_card_url(InfoCard.last)
  end

  test "should show info_card" do
    get info_card_url(@info_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_info_card_url(@info_card)
    assert_response :success
  end

  test "should update info_card" do
    patch info_card_url(@info_card), params: { info_card: { info_card_description: @info_card.info_card_description, info_card_image_url: @info_card.info_card_image_url, info_card_title: @info_card.info_card_title, info_card_type: @info_card.info_card_type } }
    assert_redirected_to info_card_url(@info_card)
  end

  test "should destroy info_card" do
    assert_difference("InfoCard.count", -1) do
      delete info_card_url(@info_card)
    end

    assert_redirected_to info_cards_url
  end
end
