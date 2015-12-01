class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :admin_user

  include SessionsHelper

  def softball
  @teams = Team.all

  
      render 'softball'
  end

  def soccer
    @teams = Team.all


      render 'soccer'
  end

  def basketball
    @teams = Team.all


      render 'basketball'
  end
end
