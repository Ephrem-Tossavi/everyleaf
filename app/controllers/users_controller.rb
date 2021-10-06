class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  skip_before_action :login_required, only: [ :new, :create]

  # GET /users or /users.json
  def index
    #@users = User.all
    redirect_to tasks_path if current_user.is_admin != true
  end

  # GET /users/1 or /users/1.json
  def show
    
    if current_user &. is_admin
      @user= User.find(params[:id])
    elsif current_user != @user
      redirect_to tasks_path
    else
    @tasks = @user.tasks.all.page(params[:page]).per(5)
     end
  end

  # GET /users/new
  def new
    #if current_user &. is_admin 
    #  @user = User.new
    #elsif current_user ==nil
    #  @user = User.new
    #else
    #  redirect_to tasks_path
    if current_user
    redirect_to tasks_path
    else
    @user = User.new 
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    if current_user &. is_admin
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :password_digest, :is_admin)
    end
end
