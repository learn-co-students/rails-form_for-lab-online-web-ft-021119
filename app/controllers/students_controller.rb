class StudentsController < ApplicationController

  def index
  end
  

  def new
    set_student
  end

  def create
    @student = Student.new(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    @student.save
    redirect_to student_path(@student)
  end

  def show
    set_student
  end

  def edit
    set_student
  end

  def update
    set_student
  end

  private

  def set_student
    @student = Student.find_by_id(params[:id])
  end



end
