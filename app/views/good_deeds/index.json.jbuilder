json.array!(@good_deeds) do |good_deed|
  json.extract! good_deed, :id, :title, :good_guy_id
  json.url good_deed_url(good_deed, format: :json)
end
