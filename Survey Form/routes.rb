Rails.application.routes.draw do
 get "" => "times#index"
 post "" => "times#create"
 get "result" => "times#result"
end
