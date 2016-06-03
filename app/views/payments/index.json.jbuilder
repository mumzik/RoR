json.array!(@payments) do |payment|
  json.extract! payment, :id, :user_id, :service_type, :price, :time, :validity
  json.url payment_url(payment, format: :json)
end
