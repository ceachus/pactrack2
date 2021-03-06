class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders, :dependent => :destroy
  has_many :items, :through => :orders, :source => :items
  # has_many :returns, :through => :items, :source => :items
  has_many :packages, :through => :orders
end
