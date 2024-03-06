class Review < ApplicationRecord
  belongs_to :restaurant

  @allowed_ratings = (0..5).to_a

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, inclusion: @allowed_ratings

end
