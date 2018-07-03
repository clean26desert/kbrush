class AloneIllust < ApplicationRecord
	belongs_to :user
	belongs_to :size

	has_many :orders

	attachment :al_illust_img

	validates :al_illust_img, presence: true
	validates :al_illust_name, presence: true
	validates :al_illust_introduct, presence: true
	validates :al_illust_attention, presence: true
end
