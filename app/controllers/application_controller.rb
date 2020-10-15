class ApplicationController < ActionController::Base

  def blank_add_form
render({ :template => "calculation_templates/add_form.html.erb" })
end

def blank_subtract_form
render({ :template => "calculation_templates/subtract_form.html.erb" })
end

def blank_multiply_form
render({ :template => "calculation_templates/multiply_form.html.erb" })
end

def blank_divide_form
render({ :template => "calculation_templates/divide_form.html.erb" })
end

end
