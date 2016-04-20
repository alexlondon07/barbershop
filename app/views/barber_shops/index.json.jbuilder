json.array!(@barber_shops) do |barber_shop|
  json.extract! barber_shop, :id, :code, :name, :business_name, :nit, :address, :city, :phone, :owner, :contact_name, :contact_phone1, :contact_phone2, :contact_email, :enable
  json.url barber_shop_url(barber_shop, format: :json)
end
