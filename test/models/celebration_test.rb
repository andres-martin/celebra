# == Schema Information
#
# Table name: celebrations
#
#  id          :integer          not null, primary key
#  image       :string
#  name        :string
#  description :text
#  date        :date
#  ubication   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CelebrationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
