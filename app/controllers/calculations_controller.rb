class CalculationsController < ApplicationController 
   
    def flex_square
       
       # The incoming parameter for this action look like {"number" => "5"}
       # Rails stores that hash in a variable called params 
       
       @input_number = params["number"].to_f
       @number_squared = params["number"].to_f ** 2
       # to dive into a hash you use square brackets and the key 
       
       render ("calculations/flexible_square_template.html.erb")
       
    end
    
    def flex_square_root
       
       @input_number = params["number"].to_f
       @number_square_rooted = params["number"].to_f
       @number_square_rooted = Math.sqrt(@number_square_rooted)

       render ("calculations/flexible_square_root_template.html.erb")
       
    end 
    
    def flex_monthly_payment
       
       @basis_points = params["basis_points"].to_f
       @r = @basis_points / 12 
       @years = params["number_of_years"].to_f
       @pv = params["present_value"].to_f
       
       @payment = ( @r * @pv ) / ( 1 - ((1 + @r) ** (-1 * @years)))
       @payment = @payment.to_f
       
       render ("calculations/flexible_payment.html.erb")
       
    end 
    
    def flex_random
       
       @min = params["min"]
       @max = params["max"]
       
       @random = rand(1) * (@max - @min) + @min
       
       render ("calculations/flexible_random.html.erb")
       
    end 
    
    def square_form
       
       render ("calculations/square_form_template.html.erb")
       
    end
    
    def process_square
       
       @input_number = params["user_number"].to_f
       @number_squared = params["user_number"].to_f ** 2

       render ("calculations/square_results.html.erb")
       
    end
    
    def square_root_form
       
       render ("calculations/square_root_form_template.html.erb")
       
    end
    
    def process_square_root
       
       @input_number = params["user_number"].to_f
       @number_square_rooted = Math.sqrt(@input_number)

       render ("calculations/square_root_results.html.erb")
       
    end
    
    def payment_form
       
       render ("calculations/payment_form_template.html.erb")
       
    end
    
    def process_payment
       
       @basis_points = params["basis_points"].to_f
       @r = @basis_points / 12 
       @years = params["number_of_years"].to_f
       @pv = params["present_value"].to_f
       
       @payment = ( @r * @pv ) / ( 1 - ((1 + @r) ** (-1 * @years)))
       @payment = @payment.to_f

    render ("calculations/payment_results.html.erb")
       
    end

end