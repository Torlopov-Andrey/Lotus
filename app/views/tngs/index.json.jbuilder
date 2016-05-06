json.array!(@tngs) do |tng|
  json.extract! tng, :id, :trainer_id, :discipline_id, :town_id, :day, :time
  json.url tng_url(tng, format: :json)
end
