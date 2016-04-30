json.array!(@lines) do |line|
  json.extract! line, :id, :name, :code, :description, :enable
  json.url line_url(line, format: :json)
end
