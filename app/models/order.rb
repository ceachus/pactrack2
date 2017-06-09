class Order < ApplicationRecord
validate :quoted_arrival_date_cannot_be_in_the_past


def quoted_arrival_date_cannot_be_in_the_past
    if quoted_arrival_date? && quoted_arrival_date < Date.today
      errors.add(:quoted_arrival_date, "can't be in the past")
    end
  end

  def order_date_cannot_be_in_the_future
      if order_date > Date.today
        errors.add(:order_date, "can't be in the future")
      end
    end

belongs_to :user
has_many :items, :dependent => :destroy
belongs_to :vendor
has_many :packages
end
