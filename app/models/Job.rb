class Job
  include Mongoid::Document

  field :company_id
  field :company_name 
  field :code
  field :shortdescription
  field :detail
  field :status
  field :dateregister

end 
