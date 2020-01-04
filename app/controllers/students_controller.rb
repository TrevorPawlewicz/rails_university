class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
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

  def edit
    @student = Student.find(params[:id])
    puts "-------------------- @student = #{@student}"
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_paramz)
      flash[:notice] = "You have successfully updated your profile!"
      redirect_to student_path(@student)
    else
      render 'edit'
    end
  end

  private

  # whitelist first in Rail 4+
  def student_paramz
    params.require(:student).permit(:name, :email)
  end
end
