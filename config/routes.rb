Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "main#index"
  get "/account/login/" , to: "sessions#new" , as:"sign_in_page"
  post "/account/login/" , to: "sessions#create" , as:"sign_in"
  get "/settings" , to: "account#setting" , as: "pinchange"
  post "/settings" , to: "account#pinchange" , as: "pinupdate"

  post "/message/" , to:"message#create" , as:"message"
  get "/account/" , to:"account#index" , as:"account"
  get "/project/:id" , to:"projects#index" , as:"project"
end
