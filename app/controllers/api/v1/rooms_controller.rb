class Api::V1::RoomsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: Room.all.where(status: 'available')
  end

  def checkin
    puts "--------LLEGÓ EL JSON--------"
    puts params
    visit = Visit.new(checkin_params)

    if visit.save
      render json: visit, status: 201
    else
      render json: { errors: visit.errors }, status: 422
    end
  end

  def checkout

  end

  private

  def checkin_params
    params.require(:body).permit(:room_id, :guest_id, :days)
  end
end
