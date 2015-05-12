Rails.application.routes.draw do

  resources "institutions"

  devise_for :users, :controllers => { :invitations => 'invitations' }

  resources "users"
  root 'pages#home'
end
