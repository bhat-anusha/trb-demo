Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  api_version(:module => "V1", :header => {:name => "Accept", :value => "application/vnd.trb-demo.com; version=1"}) do
    get '/ping', to: 'greetings#ping'
  end
end
