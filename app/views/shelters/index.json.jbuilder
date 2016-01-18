json.array!(@shelters) do |shelter|
  json.extract! shelter, :id, :category, :user_id
  json.url shelter_url(shelter, format: :json)
end
