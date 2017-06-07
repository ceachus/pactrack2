class Package < ApplicationRecord
  has_many :items, :dependent => :destroy
  has_many :users, :through => :items, :source => :user
  has_many :orders, :through => :items, :source => :order
end
