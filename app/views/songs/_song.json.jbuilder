json.extract! song, :id, :name, :durationseconds, :BPM, :created_at, :updated_at
json.url song_url(song, format: :json)
