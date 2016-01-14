json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :owner, :age, :sex, :type, :avg_wins, :wins, :battlels, :user_id
  json.url pet_url(pet, format: :json)
end
