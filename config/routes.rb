Rails.application.routes.draw do
  
  # DEVISE API ROUTES
  devise_for :users,
             path: '',
             path_names: {
               
             }
end
