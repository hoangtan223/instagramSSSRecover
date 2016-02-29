# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image      :string
#  caption    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_and_belongs_to_many :hashtags
	#validate
	validates :image, presence: true
end