class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
  end
end
