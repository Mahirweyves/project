class Trade < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :clip
  has_one_attached :thumbnail
  has_many_attached :images, dependent: :destroy
  validates :title, :description, :telephone, :images, presence: true
  validates :title, uniqueness: true
end

