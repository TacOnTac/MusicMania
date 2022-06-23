class AddSongIdToPlaylistSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :playlist_songs, :song_id, :integer
  end
end
