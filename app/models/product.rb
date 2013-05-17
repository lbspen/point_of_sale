class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price_cents, :taxable, :upc_code, :category_id

  has_many :line_items
  belongs_to :category

end
