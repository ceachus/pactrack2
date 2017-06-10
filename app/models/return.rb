class Return < ApplicationRecord
  has_one :item, :dependent => :destroy
  has_many :users, :through => :items, :source => :user

end
