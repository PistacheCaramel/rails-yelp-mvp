class Restaurant < ApplicationRecord
  validates :address, presence: true
  validates :name, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews, :dependent => :destroy
end
