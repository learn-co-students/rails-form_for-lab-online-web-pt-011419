class StudentsController < ApplicationController
    def new 
        @student = Student.new
    end

    def create 
        @student = Student.new(student_params(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def show 
        @student = student_find_by_id
    end
    
    def edit 
        @student = student_find_by_id
    end 

    def update 
        @student = student_find_by_id
        @student.update(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private
    def student_params(*args)
        params.require(:student).permit(*args)
    end

    def student_find_by_id
        Student.find(params[:id])
    end
end