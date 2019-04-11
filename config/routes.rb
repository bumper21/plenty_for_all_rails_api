Rails.application.routes.draw do
  
  # DEVISE API ROUTES


  scope :api, defaults: { format: :json } do
    scope :v1 do
      devise_for :users,
                path: '/users',
                path_names: {
                  sign_in: 'login',
                  sign_out: 'logout',
                  registration: 'signup'
                },
                controllers: {
                  sessions: 'api/v1/sessions',
                  registrations: 'api/v1/registrations'
                }
    end
  end

end
