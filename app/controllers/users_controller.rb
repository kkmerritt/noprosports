class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    # @teams
    end

  # GET /users/new
  def new
    @teams = Team.all
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @teams = Team.all

  end

  # POST /users
  # POST /users.json
  def create

    @teams = Team.all
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user}
        format.json { render :show, status: :created, location: @user }
        puts 'User was successfully created.'
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        puts 'User creation errors.'

      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @teams = Team.all
    # @user.teams << user_params[:teams])

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user}
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :teams, :firstname, :lastname, :email)
    end
end
