Rails.application.routes.draw do
  root to: "home#index"

  controller :contacts do 
    get '/contacts', action: :index, as: :contacts
    get '/contacts/new', action: :new, as: :new_contact
    post '/contacts', action: :create, as: false

    get '/contacts/:id/edit', action: :edit, as: :edit_contact
    patch '/contacts/:id', action: :update, as: :contact
  end

  # get '/', controller: 'home', action: 'index'
end
