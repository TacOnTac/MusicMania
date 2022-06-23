class AddPlaylistIdToPlaylistSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :playlist_songs, :playlist_id, :integer
  end
end
