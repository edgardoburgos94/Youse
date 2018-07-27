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

  enum status: {available: 1, reserved: 2}
end
