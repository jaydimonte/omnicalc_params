Rails.application.routes.draw do
 
  get("/flexible/square/:number", {:controller => "calculations", :action => "flex_square"})
  # the colon makes it a variable 
  
  get("/flexible/square_root/:number", {:controller => "calculations", :action => "flex_square_root"})
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", {:controller => "calculations", :action => "flex_monthly_payment"})
  get("/flexible/random/:min/:max", {:controller => "calculations", :action => "flex_random"})
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
