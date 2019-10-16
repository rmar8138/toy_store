class Toy < ApplicationRecord
  belongs_to :user
  belongs_to :manufacturer
  has_many :categories_toys
  has_many :categories, through: :categories_toys
end