class Item < ApplicationRecord
  belongs_to :user

  has_many :orders

  attachment :item_img
end
