class SchoolClassesController < ApplicationController
    def new 
        @school_class = SchoolClass.new
    end

    def create 
        @school_class = SchoolClass.new(school_class_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def show 
        @school_class = school_class_find_by_id
    end

    def edit 
        @school_class = school_class_find_by_id
    end

    def update 
        @school_class = school_class_find_by_id
        @school_class = SchoolClass.update(school_class_params(:title))
        redirect_to school_class_path(@school_class)
    end

    private
    def school_class_params(*args)
        params.require(:school_class).permit(*args)
    end

    def school_class_find_by_id
        SchoolClass.find(params[:id])
    end
end