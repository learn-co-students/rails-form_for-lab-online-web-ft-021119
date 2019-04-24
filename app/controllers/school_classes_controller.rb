class SchoolClassesController < ApplicationController
    # def new

    #     end

        def create
            @schoolclass = SchoolClass.new(schoolclass_params(:title, :room_number))
            @schoolclass.save
            redirect_to school_classes_path(@schoolclass)
        end

    #     def show

    #     end

    #     def edit

    #     end

    #     def update

    #     end

        private

        def schoolclass_params(*args)
            params.require(:school_class).permit(*args)
        end
end