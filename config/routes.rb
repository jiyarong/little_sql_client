LittleSqlClient::Engine.routes.draw do
  resources :client, path: '' do
    collection do
      post :search
    end
  end
end


