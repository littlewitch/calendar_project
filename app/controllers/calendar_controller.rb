class CalendarController < ApplicationController
 def index
  @schedule = Schedule.where(user_id:current_user.id)
 end
 
 # V‹Kì¬‰æ–Ê
 def new
  @schedule = Schedule.new
 end
 
 def create
  new_schedule = Schedule.new(
   user_id: current_user.id,
   start_date: params[:schedule][:start_date],
   end_date: params[:schedule][:end_date],
   schedule: params[:schedule][:schedule]
  )
  
  new_schedule.save!
  
  redirect_to action: :index
 end
end
