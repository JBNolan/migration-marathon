class Reader < ActiveRecord::Base
  has_many :checkouts
  has_many :books, through: :checkouts
  validates :fullname, presence: true
  validates :email, presence: true
  validates :phonenumber, presence: true
end
