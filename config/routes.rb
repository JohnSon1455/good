Rails.application.routes.draw do
 get "/hello", to: "pages#main"
 get "/about", to: "pages#bb"
 get "/users", to: "profile#profile"
end
