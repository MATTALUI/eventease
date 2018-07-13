Rails.application.routes.draw do

  namespace :users do
    get    :index
    get    :new
    get    :edit
    get    :login
    post   :create
    post   :update
    post   :login_user
    delete :destroy
    delete :logout_user
  end
  # get 'users/index'
  #
  # get 'users/new'
  #
  # get 'users/create'
  #
  # get 'users/edit'
  #
  # get 'users/update'
  #
  # get 'users/destroy'
  #
  # get 'users/login'
  #
  # get 'users/login_user'
  #
  # get 'users/logout_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
