class Book < ActiveRecord::Base
   validates :name, presence: true
   validates :rating, numericality: { greater_than_or_equal_to: 0 }
   validates :rating, numericality: { less_than_or_equal_to: 100 }
end
