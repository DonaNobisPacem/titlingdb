json.array!(@titles) do |title|
  json.extract! title, :id, :classification, :description, :owner, :total_area, :acquisition, :status, :date_issued, :tax_dec_no, :remarks, :university_id
  json.url title_url(title, format: :json)
end
