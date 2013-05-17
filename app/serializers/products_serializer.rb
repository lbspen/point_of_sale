class ProductsSerializer < ActiveModel::Serializer
  embed :ids
  attributes :description, :name, :price_cents, :taxable, :upc_code, :category_id, :short_description
  has_many :line_items

  binding.pry

  def short_description
   description.truncate(40)
  end

end
