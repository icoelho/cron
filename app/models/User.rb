class User
  include Mongoid::Document

  field :store_id
  field :store_name
  field :email
  field :password
  field :status

end
