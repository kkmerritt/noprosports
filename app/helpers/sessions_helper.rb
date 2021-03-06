module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
    puts "session helper log_in reached."

  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def admin_user
    if current_user.try(:admin?)
      return true
    else
      # enable code below for current user to become admin
       #current_user.update_attribute :admin, true
      return false
    end
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    if current_user
      return true
    else
      return false
    end
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
