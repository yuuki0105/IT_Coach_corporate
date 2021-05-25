Rails.application.routes.draw do

  root "tops#show"
  resource :top,only: [:show]

  resource :contact,only: [:show]


  namespace :itcoach do
    resource :recruitment,only: [:show]
    resource :entry,only: [:show]
  end

  resource :privacy,only: [:show]

end