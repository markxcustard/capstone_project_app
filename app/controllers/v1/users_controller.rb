class V1::UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: {status: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
    def update
      user = User.find_by(id: params[:id])
      user.name = params[:name] || user.name
      user.email = params[:email] || user.email
      user.password = params[:password] || user.password
      user.save
      render json: user.as_json
    end
    def destroy
      user = User.find_by(id: params[:id])
      user.destroy
      render json: {message: "User Successfully Removed!!!"}
    end
  end
end
