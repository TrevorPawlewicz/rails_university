class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    # initialize a new student object in a variable
    @student = Student.new
  end
end
