class UsersController < ApplicationController

	skip_before_action :doorkeeper_authorize!, only: [ :create]

	def create
		render json: User.create!(user_params)
	end

	def update
		user.update!(user_params)
		render json: user
	end

	def show
		render json: user
	end

	def index
		render json: User.page(params[:page]).per(params[:per])
	end

	def destroy
		current_user.destroy!
	end

	protected

	def user
		params[:id] == 'me' ? (@user ||= current_user) : (@user ||= User.find params[:id])
	end

	def user_params
		params.permit(:email, :name, :password, :gender, :birthday, :picture)
	end
end
