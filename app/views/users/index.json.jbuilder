json.array!(@users) do |user|
  json.extract! user, :id, :card, :phone, :admin
  json.url user_url(user, format: :json)
end
