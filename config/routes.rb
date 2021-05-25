Rails.application.routes.draw do

  root "tops#show"
  resource :top,only: [:show]

  resource :contact,only: [:show]


  namespace :itcoach do
    resource :recrutment,only: [:show]
    resource :entry,only: [:show]
  end

  resource :privacy,only: [:show]

end