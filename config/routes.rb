Rails.application.routes.draw do

  match "questionnaires/:id/sort", to: "questionnaires#sort", :via => :post, as: "sort_questionnaires"

  resources "institutions"
  resources "questionnaires"
  resources "questions"

  devise_for :users, :controllers => { :invitations => 'invitations' }

  resources "users"
  root 'pages#home'
end
