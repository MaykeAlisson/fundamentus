module Users::V1
  class UsersController < ApplicationController
    before_action :authorize_request, except: :create

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    puts params[:id]
    puts @current_user.id
    render json: { message: 'update'}
  end

  def destroy
    render json: { message: 'delete'}
  end

  private 

  def user_params
    params.permit(
     :name, :email, :password, :password_confirmation
    )
  end
end
end
