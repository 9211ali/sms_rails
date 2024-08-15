class StudentsController < ApplicationController

  before_action :set_admin, except: [ :show, :edit, :update, :destroy ]  
  # before_action :authenticate_request, except: [ :show ]
  before_action :set_student, only: [ :show, :edit, :update, :destroy ]

  def index
    render json: { students: @admin.enrolled_students.order(:id), status: :ok }
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
    render json: { student: @student, status: :found }
  end

  def edit
    render json: { student: @student, status: :found }
  end

  def update
    if @student.update(student_params)
      render json: { status: :ok }
    end
  end

  def destroy
    if @student.destroy
      render json: { status: :ok }
    end
  end

  private

  def set_admin
    # render json: { error: 'Only admin enroll students', status: :unauthorized } unless params[:student][:admin_id].present?
    @admin = Admin.find(params[:admin_id])
  end

  def student_params
    params.permit(:first_name, :last_name, :phone, :email, :admin_id)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
