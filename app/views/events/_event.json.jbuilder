json.call(event, :id)
json.type event.kind
json.actor do
  json.call(event.actor, :id, :login, :avatar_url)
end
json.repo do
  json.call(event.repository, :id, :name, :url)
end
json.created_at event.created_at.strftime('%Y-%m-%d %H:%M:%S') #yyyy-MM-dd HH:mm:ss
