Rails.application.routes.draw do   

  resources :clubs do
  	resources :strippers
  end

end
