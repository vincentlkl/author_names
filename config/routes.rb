Rails.application.routes.draw do

  resources "institutions"
  resources "users"

  devise_for :users, :controllers => { :invitations => 'invitations' }
  root 'pages#home'
end
