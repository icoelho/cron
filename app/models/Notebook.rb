class Notebook
  include Mongoid::Document

  field :store_id
  field :store_name
  field :vehicle_id
  field :vehicle_name
  field :user_id
  field :user_name
  field :licenseplate
  field :ownername
  field :email
  field :phone
  field :dtschedule
  field :dtregister
  field :status
 
end
