json.restaurant do
  json.id @restaurant.id
  json.name @restaurant.name
  json.address @restaurant.address

  json.partial! 'user', locals: {user: @restaurant.user}

  json.reviews @restaurant.reviews do |review|
    json.content review.content
    json.partial! 'user', locals: {user: review.user}
  end
end