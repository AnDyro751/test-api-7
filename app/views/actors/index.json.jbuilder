json.array! @actors do |actor|
  json.partial! 'actors/actor', actor: actor
end