# frozen_string_literal: true
# json.partial! 'events/event', collection: @events.to_a, as: :event
json.array! @events.to_a do |event|
  json.partial! 'events/event', event: event
end