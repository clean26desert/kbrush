class Item < ApplicationRecord
  belongs_to :user

  has_many :orders

  attachment :item_img

  validates :item_img, presence: true
  validates :item_name, presence: true
  validates :item_introduct, presence: true
  validates :item_attention, presence: true
  #validatesでb4 or a4presence: trueにする
end
