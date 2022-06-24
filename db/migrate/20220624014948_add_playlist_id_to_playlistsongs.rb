class AddPlaylistIdToPlaylistsongs < ActiveRecord::Migration[6.0]
  def change
    add_column :playlistsongs, :playlist_id, :integer
  end
end
