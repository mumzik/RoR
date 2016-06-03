json.array!(@recievers) do |reciever|
  json.extract! reciever, :id, :user_id
  json.url reciever_url(reciever, format: :json)
end
