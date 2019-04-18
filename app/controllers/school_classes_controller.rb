class SchoolClassesController < ApplicationController
   def new
      @new_school_class = SchoolClass.new
   end

   def create
      @school_class = SchoolClass.new(school_class_params)
      if @school_class.save
         redirect_to school_class_path(@school_class)
      else
         redirect_to new_school_class_path
      end
   end

   def show
      @school_class = current_school_class
   end

   def edit
      @school_class = current_school_class
   end

   def update
      @school_class = current_school_class
      @school_class.update(school_class_params)
      redirect_to school_class_path(@school_class)
   end

   private

      def school_class_params
         params.require(:school_class).permit(:title, :room_number)
      end

      def current_school_class
         SchoolClass.find(params[:id])
      end

end
