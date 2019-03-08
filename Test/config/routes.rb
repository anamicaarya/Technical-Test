Rails.application.routes.draw do
  resources :datasets do
    member do
      get 'preview'

    end
end

  #defaults: { format: 'json' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
