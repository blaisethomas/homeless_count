json.array!(@individuals) do |individual|
  json.extract! individual, :id, :category, :notes, :user_id
  json.url individual_url(individual, format: :json)
end
