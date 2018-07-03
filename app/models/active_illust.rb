class ActiveIllust < ApplicationRecord
	belongs_to :order

	attachment :a_illust_img

	validates :a_illust_img, presence: true
	validates :a_illust_name, presence: true
	validates :advice, presence: true
	validates :a_value_clear, presence: true
	validates :a_value_match, presence: true
	validates :a_value_again, presence: true
	validates :a_value_comment, presence: true

end
