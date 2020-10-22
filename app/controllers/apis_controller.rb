class ApisController < ActionController::Base

def blank_coord_form
render({ :template => "weather_templates/coord_form.html.erb" })
end

def address_coords
address = params.fetch("user_address")
url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + address + "1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyDB6uZXmYRlo88RLhAxD-yxUbMIZd4oHpg"
raw_data=open(url).read
parsed_data=JSON.parse(raw_data)


render({ :template => "weather_templates/address_coords.html.erb" })
end

end
