Rails.application.routes.draw do
  #get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  #ルートパスでtopページを
  root to: "homes#top"

  get 'homes/about' => 'homes#about', as: 'about'
# Prefix                 Verb     URI Pattern                 Controller#action
# destroy_user_session  DELETE   /users/sign_out(.:format)    devise/sessions#destroy

end
