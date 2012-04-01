class Product
  include Mongoid::Document

  field :store_id
  field :store_name
  field :manufacturer_id
  field :manufacturer_name

end
