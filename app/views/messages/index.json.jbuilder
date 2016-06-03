json.array!(@messages) do |message|
  json.extract! message, :id, :reciever_id, :sender_id, :time, :message_text, :unread
  json.url message_url(message, format: :json)
end
