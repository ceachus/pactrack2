class Order < ApplicationRecord
  belongs_to :user
has_many :items, :dependent => :destroy
belongs_to :vendor
has_many :packages, :through => :items, :source => :package
end
