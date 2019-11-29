Rails.application.routes.draw do
  # get 'hellos/index'
  get "" => "hellos#index"
  get "say/hello" => "hellos#say"
  get "say/hello(/:name)" => "hellos#say"
  get "hello" => "hellos#hello"
  get 'times' => "hellos#times"
  get 'times/restart' => "hellos#reset"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
