class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :admin_user

  include SessionsHelper

  def softball
  @teams = Team.all

    @my_hash = {
        stuff: "this is stuff",
        my_array: %w[one two three four],
        rooturl: root_url,
        rootpath: root_path
      }
      render 'softball'
  end

  def soccer
    @teams = Team.all

    @my_hash = {
        stuff: "this is stuff",
        my_array: %w[one two three four],
        rooturl: root_url,
        rootpath: root_path
      }
      render 'soccer'
  end

  def basketball
    @teams = Team.all

    @my_hash = {
        stuff: "this is stuff",
        my_array: %w[one two three four],
        rooturl: root_url,
        rootpath: root_path
      }
      render 'basketball'
  end
end
