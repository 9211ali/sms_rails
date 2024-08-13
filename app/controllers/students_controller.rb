class StudentsController < ApplicationController

  before_action :set_admin

  def index
    render json: { students: @admin.enrolled_students, status: :ok }
  end

  def new
  end

  def create
    student = @admin.enrolled_students.new(student_params)
    if student.save
      render json: { student_id: student.id, status: :created }
    else
      render json: { error: 'Error occured!', status: :unprocessable_entity }
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_admin
    # render json: { error: 'Only admin enroll students', status: :unauthorized } unless params[:student][:admin_id].present?
    @admin = Admin.find(params[:admin_id])
  end

  def student_params
    params.permit(:first_name, :last_name, :phone, :email, :admin_id)
  end
end
