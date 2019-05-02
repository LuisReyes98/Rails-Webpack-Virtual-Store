class Category < ApplicationRecord
  has_one :group
  validates :name, presence: true
end
