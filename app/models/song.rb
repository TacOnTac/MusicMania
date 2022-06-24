class Song < ApplicationRecord
	belongs_to :artist
	belongs_to :genre
	belongs_to :album
	has_many :playlist_songs

	has_one_attached :mp3, dependent: :destroy
end
