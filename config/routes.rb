Rails.application.routes.draw do



  resources :users, only: [:index, :show], defaults: {format: :json} do
    resources :messages, only: [:index, :show], defaults: {format: :json}
  end

end
