require "application_system_test_case"

class PlaylistsongsTest < ApplicationSystemTestCase
  setup do
    @playlistsong = playlistsongs(:one)
  end

  test "visiting the index" do
    visit playlistsongs_url
    assert_selector "h1", text: "Playlistsongs"
  end

  test "creating a Playlistsong" do
    visit playlistsongs_url
    click_on "New Playlistsong"

    click_on "Create Playlistsong"

    assert_text "Playlistsong was successfully created"
    click_on "Back"
  end

  test "updating a Playlistsong" do
    visit playlistsongs_url
    click_on "Edit", match: :first

    click_on "Update Playlistsong"

    assert_text "Playlistsong was successfully updated"
    click_on "Back"
  end

  test "destroying a Playlistsong" do
    visit playlistsongs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Playlistsong was successfully destroyed"
  end
end
