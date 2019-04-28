class Association < ApplicationRecord
    belongs_to :orders
    belongs_to :product
end