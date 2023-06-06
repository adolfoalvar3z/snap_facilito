require "test_helper"

class SnapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snap = snaps(:one)
  end

  test "should get index" do
    get snaps_url
    assert_response :success
  end

  test "should get new" do
    get new_snap_url
    assert_response :success
  end

  test "should create snap" do
    assert_difference("Snap.count") do
      post snaps_url, params: { snap: { color: @snap.color, title: @snap.title } }
    end

    assert_redirected_to snap_url(Snap.last)
  end

  test "should show snap" do
    get snap_url(@snap)
    assert_response :success
  end

  test "should get edit" do
    get edit_snap_url(@snap)
    assert_response :success
  end

  test "should update snap" do
    patch snap_url(@snap), params: { snap: { color: @snap.color, title: @snap.title } }
    assert_redirected_to snap_url(@snap)
  end

  test "should destroy snap" do
    assert_difference("Snap.count", -1) do
      delete snap_url(@snap)
    end

    assert_redirected_to snaps_url
  end
end
