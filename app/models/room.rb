# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  status     :integer
#  number     :integer
#  daily_rate :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Room < ApplicationRecord
  has_many :visits, dependent: :destroy


  validates :number, presence: true, uniqueness: true
  validates :status, presence: true
  validates :daily_rate, presence: true
  validate :only_permited_status

  enum status: {available: 1, reserved: 2}

  def only_permited_status
    puts "PRUEBA EL ESTATUS"
    if ![1,2].include?(self.status)
      errors.add(:status, "Not permited")
    end
  end
end
