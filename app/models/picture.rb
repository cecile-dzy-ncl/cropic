class Picture < ApplicationRecord
  belongs_to :sentence
  has_many :words
end
