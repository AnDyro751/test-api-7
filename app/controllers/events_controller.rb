# frozen_string_literal: true

class EventsController < ApplicationController
  before_action :find_new_event, only: [:create]
  before_action :find_or_create_author, only: [:create]
  before_action :find_or_create_repository, only: [:create]
  before_action :find_event, only: [:show]

  def index
    @events = Event.includes(:actor, :repository).all
    render formats: [:json], locals: {events: @events}
  end

  def show; end

  def erase_all

    Event.all.destroy_all
    render json: {success: true}, status: :ok
  rescue StandardError => e
    render json: {success: false}, status: :internal_server_error

  end

  def create
    @event = Event.new(id: params['id'], kind: params['type'], created_at: params['created_at'])
    @event.actor = @actor
    @event.repository = @repository
    if @event.save
      render json: {success: true}, status: :created
    else
      render json: {success: false}, status: :bad_request
    end
  end


  private


  def find_event
    @event = Event.find_by(id: params['id'])
    puts "--------#{@event}-----#{params}"
    render json: {}, status: :not_found if @event.nil?
    render "events/_event", locals: {event: @event}, status: :ok unless @event.nil?
  end

  def find_new_event
    event = Event.find_by(id: params['id'])
    render json: {success: false}, status: :bad_request unless event.nil?
  end

  def find_or_create_author
    @actor = Actor.find_or_initialize_by(id: params['actor']['id'])
    attributes = @actor.attributes.merge(params['actor'])
    @actor.attributes = attributes
    @actor.save!
  end

  def find_or_create_repository
    @repository = Repository.find_or_initialize_by(id: params['repo']['id'])
    attributes = @repository.attributes.merge(params['repo'])
    @repository.attributes = attributes
    @repository.save!
  end

  def event_params
    params.permit(:type, :id, :created_at, actor: %i[login avatar_url], repo: %i[name url])
  end
end
