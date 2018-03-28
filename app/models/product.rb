class Product < ApplicationRecord
resourcify
belongs_to :category
has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

has_many :order_items


end
