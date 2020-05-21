require 'test_helper'

class StreamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stream = streams(:one)
  end

  test "should get index" do
    get streams_url, as: :json
    assert_response :success
  end

  test "should create stream" do
    assert_difference('Stream.count') do
      post streams_url, params: { stream: { description: @stream.description, title: @stream.title } }, as: :json
    end

    assert_response 201
  end

  test "should show stream" do
    get stream_url(@stream), as: :json
    assert_response :success
  end

  test "should update stream" do
    patch stream_url(@stream), params: { stream: { description: @stream.description, title: @stream.title } }, as: :json
    assert_response 200
  end

  test "should destroy stream" do
    assert_difference('Stream.count', -1) do
      delete stream_url(@stream), as: :json
    end

    assert_response 204
  end
end
