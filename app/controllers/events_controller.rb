class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  def index
    @events = Event.all
  end 

  def show
  end 

  def new
    @event = Event.new
  end 

  def create
    @event = current_user.events.create(event_params)

    if (@event.save)
      redirect_to @event
    else
      render :new
    end 
  end 

  def edit
  end 

  def update
    if(@event.update(event_params))
      redirect_to @event
    else 
      render :edit
    end 
  end 

  def destroy
    @event.destroy

    redirect_to events_path
  end 

  # def set_user_event
  #   id = params[:id]
  #   @event = current_user.events.find_by_id(id)

  #   if @event == nil
  #       redirect_to events_path
  # end

  private

  def event_params
    params.require(:event).permit(:name, :location, :external_link, :conatct_email, :description, :picture, :date_from, :date_to)
  end 

  def find_event
    @event = Event.find(params[:id])
  end 
end
