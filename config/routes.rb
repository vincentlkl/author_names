Rails.application.routes.draw do

  resources "institutions"
  
  devise_for :users, :controllers => { :invitations => 'invitations' }
  root 'pages#home'
end
