json.restaurant do
	json.id @restaurant.id
  json.name @restaurant.name
  json.address @restaurant.address
  json.user do
  	json.id @restaurant.user.id
  	json.name @restaurant.user.name
  	json.email @restaurant.user.email
  end

  json.reviews @restaurant.reviews do |review|
    json.user do
    	json.id review.user.id
    	json.name review.user.name
    	json.email review.user.email
    end
    json.content review.content
  end
end