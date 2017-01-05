class Book < ActiveRecord::Base
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}, allow_nil: true
  validates :title, presence: true
  validates :author, presence: true

  has_many :checkouts
  has_many :readers, through: :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
end
