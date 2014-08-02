json.array!(@good_guys) do |good_guy|
  json.extract! good_guy, :id, :name
  json.url good_guy_url(good_guy, format: :json)
end
