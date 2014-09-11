class Book < ActiveRecord::Base
   has_many :checkouts
   has_many :categories
   validates :name, presence: true
   validates :rating, numericality: { greater_than_or_equal_to: 0 }
   validates :rating, numericality: { less_than_or_equal_to: 100 }
end
