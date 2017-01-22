class TeachersController < ApplicationController

	skip_before_action :doorkeeper_authorize!, only: [ :create]

	def create
		render json: Teacher.create!(user_params)
	end

	def update
		teacher.update!(user_params)
		render json: teacher
	end

	def show
		render json: teacher
	end

	def index
		render json: Teacher.page(params[:page]).per(params[:per])
	end

	def destroy
		current_user.destroy!
	end

	protected

	def teacher
		params[:id] == 'me' ? (@teacher ||= current_user) : (@teacher ||= Teacher.find params[:id])
	end

	def user_params
		params.permit(:email, :name, :password, :gender, :birthday, :picture)
	end
end
