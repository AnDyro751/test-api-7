class ActorsController < ApplicationController
  before_action :set_actor, only: [:events_actors]
  before_action :set_event, only: [:update]

  def index
    @actors = Actor.all.order(:events_count => :desc)
    render formats: [:json], locals: {actors: @actors}
  end

  def update
    @event.update_attribute(avatar_url: params['avatar_url'])
  end

  def events_actors
    @events = Event.includes(:actor, :repository).where(actor: @actor)
    render formats: [:json], locals: {events: @events}
  end

  private

  def set_event
    @event = Event.find_by(id: params['id'])
    return render json: {}, status: :bad_request if params.except("controller", "action", "avatar_url").length > 0 || @event.nil?
  end

  def actor_params
    params.permit(:id, :login, :avatar_url)
  end

  def set_actor
    @actor = Actor.find_by(id: params['id'])
    render json: {}, status: :not_found if @actor.nil?
  end
end