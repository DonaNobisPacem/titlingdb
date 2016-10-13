json.array!(@universities) do |university|
  json.extract! university, :id, :university_name, :university_code
  json.url university_url(university, format: :json)
end
