class Events::ActorsController < ApplicationController
  before_action :set_actor

  def events_actors
    @events = Event.includes(:actor, :repository).where(actor: @actor)
    render formats: [:json], locals: {events: @events}
  end

  private

  def set_actor
    @actor = Actor.find_by(id: params['id'])
    puts "-----#{@actor.nil?}---#{params}"
    render json: {}, status: :not_found if @actor.nil?
  end
end