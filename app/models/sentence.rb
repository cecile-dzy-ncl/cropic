class Sentence < ApplicationRecord
  belongs_to :user
  has_many :pictures
  has_many :words, through: :pictures
end
