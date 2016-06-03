json.array!(@forms) do |form|
  json.extract! form, :id, :user_id, :description, :hobbies, :bad_habbits, :living, :target
  json.url form_url(form, format: :json)
end
