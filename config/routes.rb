Rails.application.routes.draw do
  root to: "home#index"

  controller :contacts do 
    get '/contacts', action: :index
  end

  # get '/', controller: 'home', action: 'index'
end
