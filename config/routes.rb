Rails.application.routes.draw do
  #######
  # API #
  #######

  namespace :api do
    api versions: 1, module: "v1" do
      resources :races, only: [:create]

      resources :user, only: [] do 
        resources :races, only: [:index]
      end
    end
  end

end
