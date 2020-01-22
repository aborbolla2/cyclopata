require 'test_helper'

class CoachTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coach_type = coach_types(:one)
  end

  test "should get index" do
    get coach_types_url
    assert_response :success
  end

  test "should get new" do
    get new_coach_type_url
    assert_response :success
  end

  test "should create coach_type" do
    assert_difference('CoachType.count') do
      post coach_types_url, params: { coach_type: {  } }
    end

    assert_redirected_to coach_type_url(CoachType.last)
  end

  test "should show coach_type" do
    get coach_type_url(@coach_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_coach_type_url(@coach_type)
    assert_response :success
  end

  test "should update coach_type" do
    patch coach_type_url(@coach_type), params: { coach_type: {  } }
    assert_redirected_to coach_type_url(@coach_type)
  end

  test "should destroy coach_type" do
    assert_difference('CoachType.count', -1) do
      delete coach_type_url(@coach_type)
    end

    assert_redirected_to coach_types_url
  end
end
