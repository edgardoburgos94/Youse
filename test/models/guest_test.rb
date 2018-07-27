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
  test "Guest is not created without a name" do
    guest = Guest.new(loyalty_tier:1)
    assert_not guest.save
  end

  test "Guest is not created without a loyalty_tier" do
    guest = Guest.new(name: 'juan')
    assert_not guest.save
  end
end
