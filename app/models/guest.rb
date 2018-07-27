# == Schema Information
#
# Table name: guests
#
#  id           :integer          not null, primary key
#  name         :string
#  loyalty_tier :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Guest < ApplicationRecord
  has_many :visits, dependent: :destroy
  enum loyalty_tier: {bronze: 1, platinum: 2, gold: 3, diamond: 4, chuck_norris: 5}
end
