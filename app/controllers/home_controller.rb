class HomeController < ApplicationController
   
   skip_before_filter :verify_authenticity_token
   
   def index
       loadagenda
       render "index"
   end

   def agendanew
      loadagenda
      render "agenda/new"
   end

   def agendasave
      t = Time.now
      dtregistro = t.strftime("%Y%m%d")
      dtsch      = params[:dtschedule]
      dtsch = dtsch[6..9] << dtsch[3..4] << dtsch[0..1]
      hrsch = params[:hour] << params[:min]
      ag = Notebook.new(
             :vehicle_name => params[:modelo],
             :licenseplate => params[:license],
             :ownername    => params[:owner],
             :email        => params[:email],
             :phone        => params[:phone],
             :dtschedule   => dtsch,
             :hrschedule   => hrsch,
             :dtregister   => dtregistro
           )
      ag.save

   end


   private 

   def loadagenda
       t = Date.today
       t2 = t + 1
       today = t.strftime("%Y%m%d")  
       tomorrow = t2.strftime("%Y%m%d")
       @cronall     = Notebook.where("status" => "ABERTO").order_by(:dtschedule, "ASC").limit(30)
       @crontoday   = Notebook.where("status" => "ABERTO" , "dtschedule" => "#{today}")
       @crontomorrow  = Notebook.where("status" => "ABERTO" , "dtschedule" => "#{tomorrow}")
   end



end
