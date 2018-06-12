class Order < ApplicationRecord
	belongs_to :item
	belongs_to :alone_illust

	has_many :informations

	has_one :active_illust
end
