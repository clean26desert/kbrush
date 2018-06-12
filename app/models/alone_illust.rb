class AloneIllust < ApplicationRecord
	belongs_to :user
	belongs_to :size

	has_many :orders

	attachment :al_illust_img
end
