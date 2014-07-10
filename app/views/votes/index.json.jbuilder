json.array!(@votes) do |vote|
  json.extract! vote, :id, :green, :red
  json.url vote_url(vote, format: :json)
end
