class Item < ApplicationRecord
  belongs_to :package
  belongs_to :return
  belongs_to :order
  has_one :user, :through => :order, :source => :user
end