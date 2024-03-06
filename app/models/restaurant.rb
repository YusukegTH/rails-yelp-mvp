class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  @allowed_categories = %w[chinese italian japanese french belgian]

  validates :phone_number, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: @allowed_categories
end
