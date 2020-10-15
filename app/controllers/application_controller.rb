class ApplicationController < ActionController::Base

  def blank_add_form
render({ :template => "calculation_templates/add_form.html.erb" })
end

  def calculate_add
    @num1 = params.fetch("first_num").to_f
    @num2 = params.fetch("second_num").to_f
    @result = @num1 + @num2
    render({ :template => "calculation_templates/wizard_add.html.erb" })
end

def blank_subtract_form
render({ :template => "calculation_templates/subtract_form.html.erb" })
end

  def calculate_subtract
    @num1 = params.fetch("first_num").to_f
    @num2 = params.fetch("second_num").to_f
    @result = @num2 - @num1
    render({ :template => "calculation_templates/wizard_subtract.html.erb" })
end

def blank_multiply_form
render({ :template => "calculation_templates/multiply_form.html.erb" })
end

  def calculate_multiply
    @num1 = params.fetch("first_num").to_f
    @num2 = params.fetch("second_num").to_f
    @result = @num1 * @num2
    render({ :template => "calculation_templates/wizard_multiply.html.erb" })
end

def blank_divide_form
render({ :template => "calculation_templates/divide_form.html.erb" })
end

  def calculate_divide
    @num1 = params.fetch("first_num").to_f
    @num2 = params.fetch("second_num").to_f
    @result = @num1 / @num2
    render({ :template => "calculation_templates/wizard_divide.html.erb" })
end

end
