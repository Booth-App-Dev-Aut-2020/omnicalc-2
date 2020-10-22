class ApisController < ActionController::Base

def blank_coord_form
render({ :template => "weather_templates/coord_form.html.erb" })
end

def address_coords
@address = params.fetch("user_address")
key = GMAP_KEY
url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @address + "&key=" + key
raw_data=open(url).read
parsed_data=JSON.parse(raw_data)
@longitude = parsed_data.dig("results", 0, "geometry", "location", "lng")
@latitude = parsed_data.dig("results", 0, "geometry", "location", "lat")

render({ :template => "weather_templates/address_coords.html.erb" })
end

end
