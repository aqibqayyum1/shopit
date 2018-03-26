class Category < ApplicationRecord
resourcify
validates :name, presence: true
has_many :products, dependent: :destroy

end
