class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user, except: []
  private
    def authenticate_user
      puts "================"
      puts "meow!!"
      puts "================"
      # redirect_to users_login_path
    end
end
