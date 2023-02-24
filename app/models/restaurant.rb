class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  categories = ['french', 'italian', 'japanese', 'chinese', 'belgian']
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, :inclusion=> { :in => categories }
end
