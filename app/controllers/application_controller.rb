class ApplicationController < ActionController::Base

  def member_percentage_to_pay(guest)
    if guest.bronze?
      100
    elsif guest.platinum?
      98
    elsif guest.gold?
      95
    elsif guest.diamond?
      90
    elsif guest.chuck_norris?
      0
    end
  end

  def resume_information(visit)
    price = visit.room.daily_rate
    minibar = rand(0..20000)
    percentage_to_pay = member_percentage_to_pay(visit.guest)
    sub_total = (price*visit.days + minibar)
    total = sub_total * percentage_to_pay/100

    {daily_rate: price, minibar: minibar, discount: (-(percentage_to_pay-100)).to_s + '%',sub_total: sub_total, total: total}
  end


end
