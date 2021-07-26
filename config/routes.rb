Rails.application.routes.draw do

  root "tops#show"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  resource :top,only: [:show]

  resource :contact,only: [:show, :create]
  resource :contact_complete,only: [:show]

  namespace :itcoach do
    resource :recruitment,only: [:show]
    resource :entry,only: [:show, :create]
    resource :complete,only: [:show]
  end

  resource :privacy,only: [:show]

  resource :free_consultation_realization,only: [:show, :create]
  resource :free_consultation_realization_complete,only: [:show]

end