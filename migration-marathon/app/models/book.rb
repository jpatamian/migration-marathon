class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :rating, numericality: { in: 0..100, allow_nil: true }
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
end
