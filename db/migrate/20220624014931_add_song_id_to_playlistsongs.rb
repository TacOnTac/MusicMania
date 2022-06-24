class AddSongIdToPlaylistsongs < ActiveRecord::Migration[6.0]
  def change
    add_column :playlistsongs, :song_id, :integer
  end
end
