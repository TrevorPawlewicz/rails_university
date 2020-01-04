class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
    # before_action :set_student will run here :)
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
      redirect_to student_path(@student)
    else
      render 'new'
    end
  end

  def edit
    # before_action :set_student will run here :)
    puts "-------------------- @student = #{@student}"
  end

  def update
    # before_action :set_student will run here :)
    if @student.update(student_paramz)
      flash[:notice] = "You have successfully updated your profile!"
      redirect_to student_path(@student)
    else
      render 'edit'
    end
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  # whitelist first in Rail 4+
  def student_paramz
    params.require(:student).permit(:name, :email)
  end
end
