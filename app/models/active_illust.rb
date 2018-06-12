class ActiveIllust < ApplicationRecord
	belongs_to :order

	attachment :a_illust_img
end
