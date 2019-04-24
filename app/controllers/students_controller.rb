class StudentsController < ApplicationController
# new, create, show, edit, and update actions in each of the controllers.
    def new

    end

    def create

    end

    def show

    end

    def edit

    end

    def update

    end

    private

    def student_params(*args)
        params.require(:student).permit(*args)
    end
end