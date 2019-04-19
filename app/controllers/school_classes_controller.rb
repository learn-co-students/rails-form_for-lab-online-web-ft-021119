class SchoolClassesController < ApplicationController
  def new
  end
  def show
    @school = SchoolClass.find(params[:id])
  end
  def edit
    @school = SchoolClass.find(params[:id])
  end
  def create
    @school = School.new
    @school.title = params[:title]
    @school.room_number = params[:room_number]
    @school.save
    redirect_to school_path(@school) #show
  end
end
