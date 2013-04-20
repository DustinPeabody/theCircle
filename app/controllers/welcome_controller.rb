class WelcomeController < ApplicationController
  def home
  end

  def mobile
  end

  def auth
    user = User.find_by_email(params[:email])
    if user
      redirect_to "/auth/facebook"
    else
      raise "ass"
      #throw an error, redirect to home page
    end
  end
end
