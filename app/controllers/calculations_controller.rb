class CalculationsController < ApplicationController 
   
    def flex_square
       
       # The incoming parameter for this action look like {"number" => "5"}
       # Rails stores that hash in a variable called params 
       
       @input_number = params["number"].to_i
       @number_squared = params["number"].to_i ** 2
       # to dive into a hash you use square brackets and the key 
       
       render ("calculations/flexible_square_template.html.erb")
       
    end
    
    def flex_square_root
       
       @input_number = params["number"].to_i
       @number_square_rooted = params["number"].to_i ** 2

       render ("calculations/flexible_square_root_template.html.erb")
       
    end 
    
    def flex_monthly_payment
       
       @basis_points = params["basis_points"].to_i
       @r = @basis_points * 0.0001
       @years = params["number_of_years"].to_i
       @pv = params["present_value"].to_i
       
       @payment = ( @r * @pv ) / ( 1 - ((1 + @r) ** (-1 * @years)))
       @payment = @payment.to_i
       
       render ("calculations/flexible_payment.html.erb")
       
    end 
    
    def flex_random
       
       @min = params["min"]
       @max = params["max"]
       
       @random = 0

       render ("calculations/flexible_random.html.erb")
       
    end 

end