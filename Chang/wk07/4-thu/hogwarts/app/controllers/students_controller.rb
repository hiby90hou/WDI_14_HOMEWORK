class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def create
  	student = Student.new
  	student.name = params[:name]
  	student.house_id = params[:house_id]
  	student.img_url = params[:img_url]
  	if student.save
  		# binding.pry
  		redirect_to "/students/#{student.id}"
  	else
  		render :new
  	end
  end

end
