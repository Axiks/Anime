require 'test_helper'

class WritingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @writing = writings(:one)
  end

  test "should get index" do
    get writings_url
    assert_response :success
  end

  test "should get new" do
    get new_writing_url
    assert_response :success
  end

  test "should create writing" do
    assert_difference('Writing.count') do
      post writings_url, params: { writing: {  } }
    end

    assert_redirected_to writing_url(Writing.last)
  end

  test "should show writing" do
    get writing_url(@writing)
    assert_response :success
  end

  test "should get edit" do
    get edit_writing_url(@writing)
    assert_response :success
  end

  test "should update writing" do
    patch writing_url(@writing), params: { writing: {  } }
    assert_redirected_to writing_url(@writing)
  end

  test "should destroy writing" do
    assert_difference('Writing.count', -1) do
      delete writing_url(@writing)
    end

    assert_redirected_to writings_url
  end
end
