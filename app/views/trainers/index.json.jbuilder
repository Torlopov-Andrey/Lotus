json.array!(@trainers) do |trainer|
  json.extract! trainer, :id, :name, :discipline_id, :town_id
  json.url trainer_url(trainer, format: :json)
end
