require 'test_helper'

class GameRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_record = game_records(:one)
  end

  test "should get index" do
    get game_records_url, as: :json
    assert_response :success
  end

  test "should create game_record" do
    assert_difference('GameRecord.count') do
      post game_records_url, params: { game_record: { date_of_game: @game_record.date_of_game, frame_data: @game_record.frame_data, total_score: @game_record.total_score } }, as: :json
    end

    assert_response 201
  end

  test "should show game_record" do
    get game_record_url(@game_record), as: :json
    assert_response :success
  end

  test "should update game_record" do
    patch game_record_url(@game_record), params: { game_record: { date_of_game: @game_record.date_of_game, frame_data: @game_record.frame_data, total_score: @game_record.total_score } }, as: :json
    assert_response 200
  end

  test "should destroy game_record" do
    assert_difference('GameRecord.count', -1) do
      delete game_record_url(@game_record), as: :json
    end

    assert_response 204
  end
end
