class Trade < ApplicationRecord
  belongs_to :user
  has_many_attached :images, dependent: :destroy
  validates :title, :description, :images, presence: true
  validates :title, uniqueness: true
end

