class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    # initialize a new student object in a variable
    @student = Student.new
  end

  def create
    @student = Student.new(student_paramz)
    puts "--------------------------create: #{@student}"
    if @student.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to(root_path)
    else
      render 'new'
    end
  end

  private

  # whitelist first in Rail 4+
  def student_paramz
    params.require(:student).permit(:name, :email)
  end
end
