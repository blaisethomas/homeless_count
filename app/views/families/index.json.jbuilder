json.array!(@families) do |family|
  json.extract! family, :id, :adults, :under18male, :under18female, :under18genderunknown, :notes, :user_id
  json.url family_url(family, format: :json)
end
