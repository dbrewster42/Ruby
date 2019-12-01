Rails.application.routes.draw do
	get "" => "rpg#index"
	post "process_money" => "rpg#add"
	get "clear" => "rpg#clear"
end
