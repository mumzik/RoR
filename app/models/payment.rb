class Payment < ActiveRecord::Base
  belongs_to :user

  validates :service_type, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 2}
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}
  validates :validity, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}

end
