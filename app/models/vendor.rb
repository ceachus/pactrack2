class Vendor < ApplicationRecord

  has_many :orders, :dependent => :destroy
  has_many :users, :through => :items, :source => :user
end
