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
  end 

  def destroy
    @event.destroy

    redirect_to events_path
  end 
 
  private
    def position_params
      params.require(:position).permit(:position_type, :hours, :rate, :requirements)
    end

    def find_event 
      @event = Event.find(params[:event_id])
    end 
end
