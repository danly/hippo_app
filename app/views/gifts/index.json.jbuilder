json.array!(@gifts) do |gift|
  json.extract! gift, :id, :title, :description, :price, :due_date, :recipient, :user_id, :hashed_id, :gift_url
  json.url gift_url(gift, format: :json)
end
