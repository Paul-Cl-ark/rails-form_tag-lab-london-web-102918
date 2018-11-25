class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]


  def index
    @students = Student.all
  end

  def show
  end

  def new
    # @student = Student.new
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  # def student_params
  #   params.require(:student).permit(:first_name, :last_name)
  # end

end
