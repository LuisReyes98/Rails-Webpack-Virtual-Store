class Order < ApplicationRecord
    belongs_to :user
    has_many :associations
    has_many :products, through: :associations
end