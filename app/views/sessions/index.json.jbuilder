json.array!(@sessions) do |session|
  json.extract! session, :id, :name, :start_time
  json.url session_url(session, format: :json)
end
