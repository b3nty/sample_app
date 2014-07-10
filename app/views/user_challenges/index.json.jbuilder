json.array!(@user_challenges) do |user_challenge|
  json.extract! user_challenge, :id
  json.url user_challenge_url(user_challenge, format: :json)
end
