Rails.application.routes.draw do
    root 'courses#index'

    get 'courses/new', to: 'courses#new'

    get 'about', to: 'pages#about'

    # students:
    resources :students, except: [:destroy]
    # resources produces:
    #     students GET   /students(.:format)          students#index
    #              POST  /students(.:format)          students#create
    #  new_student GET   /students/new(.:format)      students#new
    # edit_student GET   /students/:id/edit(.:format) students#edit
    #      student GET   /students/:id(.:format)      students#show
    #              PATCH /students/:id(.:format)      students#update
    #              PUT   /students/:id(.:format)      students#update

    # login:
    get 'login', to: 'logins#new'
    post 'login', to: 'logins#create'
    delete 'logout', to: 'logins#destroy'
end
