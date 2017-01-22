class StudentsController < ApplicationController
  skip_before_action :doorkeeper_authorize!, only: [ :create]

  def create
    render json: Student.create!(user_params)
  end

  def update
    student.update!(user_params)
    render json: student
  end

  def show
    render json: student
  end

  def index
    render json: Student.page(params[:page]).per(params[:per])
  end

  def destroy
    current_user.destroy!
  end

  protected

  def student
    params[:id] == 'me' ? (@teacher ||= current_user) : (@teacher ||= Student.find params[:id])
  end

  def user_params
    params.permit(:email, :name, :password, :gender, :birthday)
  end
end
