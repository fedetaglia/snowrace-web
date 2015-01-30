Rails.application.routes.draw do
  #######
  # API #
  #######

  namespace :api do
    api versions: 1, module: "v1" do
      resources :races, only: [:create]
      resources :user, only: [:show]
    end
  end

end
