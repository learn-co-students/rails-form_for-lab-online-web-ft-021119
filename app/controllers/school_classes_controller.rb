class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    #byebug
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    set_school_class
  end

  def edit
    set_school_class
  end

  def update
    set_school_class
    @school_class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

    private
    def set_school_class
      @school_class = SchoolClass.find_by_id(params[:id])
    end
  end
