class Restaurant < ApplicationRecord
    has_one_attached :header_image
    has_many :products
end
