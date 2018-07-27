# == Schema Information
#
# Table name: visits
#
#  id         :integer          not null, primary key
#  room_id    :integer
#  guest_id   :integer
#  days       :integer
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visit < ApplicationRecord
  before_create :set_status
  after_create :remove_room_disponibility
  after_update :reset_room_disponibility

  belongs_to :room
  belongs_to :guest

  validates :days, presence: true
  validates :room_id, presence: true
  validates :guest_id, presence: true

  enum status: {done: 1, in_process: 2}

  def set_status
    puts "INSIDE SET STATUS"
    self.status = 2
  end

  def remove_room_disponibility
    puts "INSIDE REMOVE ROOM DISPONIBILITY"

    self.room.update(status: 1)
  end

  def reset_room_disponibility
    puts "INSIDE RESET ROOM DISPONIBILITY"

    puts self.room
    self.room.update(status: 2)
    puts self.room
    
  end

end
