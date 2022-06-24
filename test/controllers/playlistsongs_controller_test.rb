require 'test_helper'

class PlaylistsongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playlistsong = playlistsongs(:one)
  end

  test "should get index" do
    get playlistsongs_url
    assert_response :success
  end

  test "should get new" do
    get new_playlistsong_url
    assert_response :success
  end

  test "should create playlistsong" do
    assert_difference('Playlistsong.count') do
      post playlistsongs_url, params: { playlistsong: {  } }
    end

    assert_redirected_to playlistsong_url(Playlistsong.last)
  end

  test "should show playlistsong" do
    get playlistsong_url(@playlistsong)
    assert_response :success
  end

  test "should get edit" do
    get edit_playlistsong_url(@playlistsong)
    assert_response :success
  end

  test "should update playlistsong" do
    patch playlistsong_url(@playlistsong), params: { playlistsong: {  } }
    assert_redirected_to playlistsong_url(@playlistsong)
  end

  test "should destroy playlistsong" do
    assert_difference('Playlistsong.count', -1) do
      delete playlistsong_url(@playlistsong)
    end

    assert_redirected_to playlistsongs_url
  end
end
