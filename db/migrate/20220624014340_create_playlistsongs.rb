class CreatePlaylistsongs < ActiveRecord::Migration[6.0]
  def change
    create_table :playlistsongs do |t|

      t.timestamps
    end
  end
end
