require 'test_helper'

class CompletedActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @completed_activity = completed_activities(:one)
  end

  test "should get index" do
    get completed_activities_url, as: :json
    assert_response :success
  end

  test "should create completed_activity" do
    assert_difference('CompletedActivity.count') do
      post completed_activities_url, params: { completed_activity: { description: @completed_activity.description, duration: @completed_activity.duration, place: @completed_activity.place, time: @completed_activity.time } }, as: :json
    end

    assert_response 201
  end

  test "should show completed_activity" do
    get completed_activity_url(@completed_activity), as: :json
    assert_response :success
  end

  test "should update completed_activity" do
    patch completed_activity_url(@completed_activity), params: { completed_activity: { description: @completed_activity.description, duration: @completed_activity.duration, place: @completed_activity.place, time: @completed_activity.time } }, as: :json
    assert_response 200
  end

  test "should destroy completed_activity" do
    assert_difference('CompletedActivity.count', -1) do
      delete completed_activity_url(@completed_activity), as: :json
    end

    assert_response 204
  end
end
