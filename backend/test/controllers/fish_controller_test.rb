require 'test_helper'

class FishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fish = fish(:one)
  end

  test "should get index" do
    get fish_index_url, as: :json
    assert_response :success
  end

  test "should create fish" do
    assert_difference('Fish.count') do
      post fish_index_url, params: { fish: { fish_type: @fish.fish_type, name: @fish.name } }, as: :json
    end

    assert_response 201
  end

  test "should show fish" do
    get fish_url(@fish), as: :json
    assert_response :success
  end

  test "should update fish" do
    patch fish_url(@fish), params: { fish: { fish_type: @fish.fish_type, name: @fish.name } }, as: :json
    assert_response 200
  end

  test "should destroy fish" do
    assert_difference('Fish.count', -1) do
      delete fish_url(@fish), as: :json
    end

    assert_response 204
  end
end
