class Word < ApplicationRecord
  belongs_to :picture
  mount_uploader :photo, PhotoUploader

end
