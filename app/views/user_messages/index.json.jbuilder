json.array!(@user_messages) do |user_message|
  json.extract! user_message, :id, :name, :email, :message
  json.url user_message_url(user_message, format: :json)
end
