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

require 'test_helper'

class GuestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end