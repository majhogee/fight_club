json.array!(@fights) do |fight|
  json.extract! fight, :id, :fighter1_id, :fighter2_id, :result, :fighter_id
  json.url fight_url(fight, format: :json)
end
