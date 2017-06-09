class Return < ApplicationRecord
  has_many :items, :dependent => :destroy
  has_many :users, :through => :items, :source => :user

end
