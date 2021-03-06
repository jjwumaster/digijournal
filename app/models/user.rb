class User < ApplicationRecord
  has_many :journals
  has_many :entries, through: :journals

  validates :name, presence: true, uniqueness: true

end
