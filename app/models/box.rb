class Box < ApplicationRecord
  belongs_to :project
  has_many :items, dependent: :destroy
  has_many :tags, through: :box_tags, dependent: :destroy
end
