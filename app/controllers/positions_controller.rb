class PositionsController < ApplicationController
  before_action :find_event
  def index 
  end 

  def new
  end 

  def create
    @position = @event.positions.create(position_params)
    redirect_to event_path(@event)
  end

  def edit
  end 

  def update
    @event.position.update(position_params)
  end 

  def destroy
    @position = @event.positions.find(params[:id])
    @position.destroy

    redirect_to user_dashboard_path
  end 

  def apply 
    @position = @event.positions.find(params[:id])
    Application.create(
      worker: current_worker,
      status: "pending",
      position: @position
    )

    redirect_to worker_dashboard_path
  end

  def accept
    @application = @event.applications.find(params[:id])
    @application.update(
      status: "accepted",
    )

    redirect_to user_dashboard_path
  end

  def reject
    @application = @event.applications.find(params[:id])
    @application.update(
      status: "rejected",
    )

    redirect_to user_dashboard_path
  end

  def cancel
    @application = @event.applications.find(params[:id])
    @application.destroy()

    redirect_to worker_dashboard_path
  end



  # current_user.events.each do |event|
  #   event.pending_applications
  # end

 
  private
    def position_params
      params.require(:position).permit(:position_type, :hours, :rate, :requirements)
    end

    def find_event 
      @event = Event.find(params[:event_id])
    end 
end
