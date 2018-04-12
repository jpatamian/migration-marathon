class Category < ActiveRecord::Base
  validates :name, null: false, uniqueness: true
  has_many :categorizations
  has_many :books, through: :categorizations
end
