class RegistrationsController < ApplicationController
  skip_before_action :authenticate_request

  def create
    admin = Admin.new(admin_params)
    if admin.save
      render json: { status: :created, admin: admin } and return
    end
    render json: { status: 500 }
  end

  private

  def admin_params
    params.permit(:first_name, :last_name, :email, :phone, :password)
  end
end
