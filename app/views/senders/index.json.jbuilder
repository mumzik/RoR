json.array!(@senders) do |sender|
  json.extract! sender, :id, :user_id
  json.url sender_url(sender, format: :json)
end
