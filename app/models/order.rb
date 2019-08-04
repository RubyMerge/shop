class Order < ApplicationRecord
  validates :email, presence: true
end
