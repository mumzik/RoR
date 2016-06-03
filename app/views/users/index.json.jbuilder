json.array!(@users) do |user|
  json.extract! user, :id, :login, :name, :password, :sex, :bithday, :country, :city, :email, :last_login_in, :rang
  json.url user_url(user, format: :json)
end
