Rails.application.routes.draw do

  root "tops#show"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  resource :top,only: [:show]

  resource :contact,only: [:show, :create]


  namespace :itcoach do
    resource :recruitment,only: [:show]
    resource :entry,only: [:show, :create]
  end

  resource :privacy,only: [:show]

end