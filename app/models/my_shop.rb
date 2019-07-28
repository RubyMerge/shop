class MyShop < ApplicationRecord
  VALID_NAMES = %w(main contacts order_goods payment_delivery)
  validates_inclusion_of :page_name, :in => VALID_NAMES
  validates :page_name, presence: true, uniqueness: true
end
