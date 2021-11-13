class Booking < ApplicationRecord
  #these belongs_to allow us to make the links between the models within our database
  belongs_to :book
  belongs_to :user
end
