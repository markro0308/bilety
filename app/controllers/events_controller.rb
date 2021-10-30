class EventsController < ApplicationController
  before_action :set_event, only: %i[ show ]
  before_action :check_logged_in, only: %i[new create]
  before_action :authenticate_user!, except: [:index, :new, :show]

  def index
    @events=Event.all
  end

  def new
    @event=Event.new
  end

  def create
    @event=Event.new(event_params)

      if @event.save
        flash[:komunikat]='Wydarzenie zostało poprawnie stworzone.'
        redirect_to "/events/#{@event.id}"
      else
        render 'new'
      end
  end

  def show
  end
end

private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:artist, :description, :price_low, :price_high, :event_date)
  end

  def check_logged_in
    authenticate_or_request_with_http_basic("Ads") do |username,password|
      username=="admin" && password=="admin"
    end
  end
