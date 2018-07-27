class Api::V1::RoomsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: Room.all.where(status: 'available')
  end

  def checkin
    visit = Visit.new(checkin_params)

    if visit.save
      render json: visit, status: 201
    else
      render json: { errors: visit.errors }, status: 422
    end
  end

  def checkout
    visit = Visit.find(checkout_params[:visit_id])

    if visit.update(checkout_params.except(:visit_id))
      puts resume_information(visit)
      render json: resume_information(visit), status: 200
    else
      render json: { errors: visit.errors }, status: 422
    end
  end

  private

  def checkin_params
    params.require(:body).permit(:room_id, :guest_id, :days)
  end

  def checkout_params
    params.require(:body).permit(:visit_id, :status)
  end
end
