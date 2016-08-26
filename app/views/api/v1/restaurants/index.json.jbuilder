json.array! @restaurants do |restaurant|
  json.id restaurant.id
  json.name restaurant.name
  json.address restaurant.address

  json.partial! 'user', locals: {user: restaurant.user}

end