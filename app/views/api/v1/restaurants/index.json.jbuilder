json.restaurants do
  json.array! @restaurants do |restaurant|
    json.id restaurant.id
    json.name restaurant.name
    json.address restaurant.address
    json.user do
      json.id restaurant.user.id
      json.name restaurant.user.name
    end
  end
end
