class UsersController < ApplicationController

	skip_before_action :doorkeeper_authorize!, only: [ :create]

	def create
		render json: User.create!(email: params[:email],
															password: params[:password],
															name: params[:name],
															gender: params[:gender],
															birthday: params[:birthday],
															picture: params[:picture]
		)
	end

	def update
		user.update!(update_params)
		render json: user
	end

	def show
		render json: user
	end

	def index
		render json: User.page(params[:page]).per(params[:per])
	end

	protected

	def user
		@user ||= User.find params[:id]
	end

	def update_params
		update_params = {}
		update_params[:email] = params[:email] if params.key? :email
		update_params[:name] = params[:name] if params.key? :name
		update_params[:password] = params[:password] if params.key? :password
		update_params[:gender] = params[:gender] if params.key? :gender
		update_params[:birthday] = params[:birthday] if params.key? :birthday
		update_params[:picture] = params[:picture] if params.key? :picture
		update_params
	end
end
