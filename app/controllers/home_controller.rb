class HomeController < ApplicationController
   
   skip_before_filter :verify_authenticity_token
   
   def index
         @vagas = Job.where("status" => "1").order_by(:dateregister, "DESC").limit(30)
     render "index"
   end

end
