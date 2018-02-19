require 'pry'
class StudentsController < ApplicationController

  def index

  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(first_name: params["first_name"], last_name: params["last_name"])
    pry
    redirect_to student_path(@student)
  end

  def edit

  end

  def update

  end

end
