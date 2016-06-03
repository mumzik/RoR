class Form < ActiveRecord::Base
  belongs_to :user
  
validates :living, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 3}
validates :bad_habbits, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 3}
validates :target, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 16}
end
