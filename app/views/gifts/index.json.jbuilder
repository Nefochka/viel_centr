json.array!(@gifts) do |gift|
  json.extract! gift, :name, :phone, :time, :email, :type
  json.url gift_url(gift, format: :json)
end
