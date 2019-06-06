class StudentsController < ApplicationController
  
  def show
    @student = Student.find(params[:id])
 end 
 
 def new
   @student = Student.new
 end 
 
  def edit
    @student = Student.find(params[:id])
  end 
  
  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:title))
    redirect_to student(@student)
  end 
end 