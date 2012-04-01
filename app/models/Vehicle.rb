class Vehicle
  include Mongoid::Document

  field :manufacturer_id
  field :manufacturer_name
  field :year
  field :name
  field :status

end
