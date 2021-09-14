class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    # binding.pry
  end

  def activate
    @student = Student.find(params[:id])
    # @student.update(active: !@student.active )
    @student.active = !@student.active 
    @student.save
    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end