class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
   
    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def user_decks
      @userDecks = current_user.decks
      render json: @userDecks
    end

    def create
      user = User.create(user_params)
     
      if user.valid?
        render json: { user: user, status: :created}
      else
        render json: { error: 'failed to create user', status: :not_acceptable}
      end
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      render json: @user
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      render json: @user
    end
  

  private
    

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
  
    
  end