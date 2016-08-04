class SubjectsController < ApplicationController

  def create
    render json: assign_subject
  end

  def show
    render json: (Subject.find_by_id params[:id])
  end

  def destroy
    remove_subject
  end

  protected

  def assign_subject
    SubjectAssignerService.new.assign_subject current_user, subject_params
  end

  def remove_subject
    SubjectRemoverService.new.remove_subject current_user, subject
  end

  def subject_params
    @name ||= params[:name].humanize
  end

  def subject
    @subject ||= Subject.find_by_id params[:id]
  end

end
