json.array!(@visits) do |visit|
  json.extract! visit, :id, :user_id, :tng_id, :date
  json.url visit_url(visit, format: :json)
end
