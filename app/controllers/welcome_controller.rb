class WelcomeController < ApplicationController
  def home
    if current_user
      if current_user.user_type == "Administrator"
        redirect_to events_path
      else
        redirect_to events_path
      end
    end
  end

  def mobile
  end

  def auth
    user = User.find_by_email(params[:email])
    if user
      redirect_to "/auth/facebook"
    else
      raise "Not allowed"
      #throw an error, redirect to home page
    end
  end
  
  def chat
    
  end
  
end
