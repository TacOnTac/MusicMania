require "application_system_test_case"

class PlaylistSongsTest < ApplicationSystemTestCase
  setup do
    @playlist_song = playlist_songs(:one)
  end

  test "visiting the index" do
    visit playlist_songs_url
    assert_selector "h1", text: "Playlist Songs"
  end

  test "creating a Playlist song" do
    visit playlist_songs_url
    click_on "New Playlist Song"

    click_on "Create Playlist song"

    assert_text "Playlist song was successfully created"
    click_on "Back"
  end

  test "updating a Playlist song" do
    visit playlist_songs_url
    click_on "Edit", match: :first

    click_on "Update Playlist song"

    assert_text "Playlist song was successfully updated"
    click_on "Back"
  end

  test "destroying a Playlist song" do
    visit playlist_songs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Playlist song was successfully destroyed"
  end
end
