Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get("/add", { :controller => "application", :action => "blank_add_form" })
get("/wizard_add", { :controller => "application", :action => "calculate_add" })
get("subtract", { :controller => "application", :action => "blank_subtract_form" })
get("/wizard_subtract", { :controller => "application", :action => "calculate_subtract" })
get("/multiply", { :controller => "application", :action => "blank_multiply_form" })
get("/wizard_multiply", { :controller => "application", :action => "calculate_multiply" })
get("/divide", { :controller => "application", :action => "blank_divide_form" })
get("/wizard_divide", { :controller => "application", :action => "calculate_divide" })

get("/street_to_coords/new", { :controller => "apis", :action => "blank_coord_form" })
get("/street_to_coords/results", { :controller => "apis", :action => "address_coords" })
get("/coords_to_weather/new", { :controller => "apis", :action => "blank_weather_form" })
get("/coords_to_weather/results", { :controller => "apis", :action => "coords_weather" })

end
