json.extract! user, :id, :screenname, :email
json.message_ids @message_ids
json.url user_url(user, format: :json)
