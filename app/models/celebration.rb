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

class Celebration < ApplicationRecord
    has_and_belongs_to_many :users
end
