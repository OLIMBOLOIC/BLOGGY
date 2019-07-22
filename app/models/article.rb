class Article < ApplicationRecord
  extend FriendlyId
  belongs_to :utilisateur
  belongs_to :category
  friendly_id :titre, use: :slugged
  mount_uploader :image, ImageUploader
  acts_as_votable
end
