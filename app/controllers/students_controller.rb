# require "pry"
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.new
  end

  def create
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    # byebug
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).premit(:first_name, :last_name)
  end
end
