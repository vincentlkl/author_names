Rails.application.routes.draw do

  resources "institutions"
  resources "questionnaires"
  resources "questions"

  devise_for :users, :controllers => { :invitations => 'invitations' }

  resources "users"
  root 'pages#home'
end
