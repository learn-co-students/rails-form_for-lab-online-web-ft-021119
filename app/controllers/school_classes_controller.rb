class SchoolClassesController < ApplicationController
  def new
  end
  def show
    @school = SchoolClass.find(params[:id])
  end
  def create
    @school = SchoolClass.new
    @school.update (params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school) #to show
  end
  def edit
    @school = SchoolClass.find(params[:id])
  end
  def update
    @school = SchoolClass.find(params[:id])
    @school.update (params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school) #to show
  end
end
