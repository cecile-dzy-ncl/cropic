class Picture < ApplicationRecord
  belongs_to :sentence
  has_many :words
  mount_uploader :photo, PhotoUploader

end
