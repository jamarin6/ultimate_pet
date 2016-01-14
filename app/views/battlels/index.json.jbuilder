json.array!(@battlels) do |battlel|
  json.extract! battlel, :id, :pet1, :pet2, :day, :hour, :winner
  json.url battlel_url(battlel, format: :json)
end
