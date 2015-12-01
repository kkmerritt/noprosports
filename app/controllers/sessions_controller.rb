class SessionsController < ApplicationController
  def new
    end

    def create
      user = User.find_by(username: user_params[:username])
      if user && user.authenticate(user_params[:password])
        log_in user
        redirect_to root_path
        flash[:message] = 'You are now logged in'
      else
        flash[:message] = 'Invalid email/password combination'

         render 'new'
      end
    end

    def destroy
        log_out
        redirect_to root_url
      end


      private

      def user_params
        params.require(:session).permit(:username, :password)
      end

end
