json.array!(@services) do |service|
  json.extract! service, :id, :name, :code, :price, :description, :enable, :barber_shop_id
  json.url service_url(service, format: :json)
end
