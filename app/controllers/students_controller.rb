class StudentsController < ApplicationController

  def index
    students = Student.all
    if(params[:name])
      filteredStudents = Student.all.filter {|s| s.first_name.downcase == params[:name] || s.last_name.downcase == params[:name]}
      render json: filteredStudents
      byebug
  else
    render json: students
  end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
