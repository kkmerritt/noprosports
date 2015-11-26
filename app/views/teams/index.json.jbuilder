json.array!(@teams) do |team|
  json.extract! team, :id, :name, :league, :members, :wins, :losses
  json.url team_url(team, format: :json)
end
