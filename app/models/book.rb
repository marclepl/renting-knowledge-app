class Book < ApplicationRecord
  #this allows us to make links between the models within our database
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  # include PgSearch::Model
  # multisearchable against: [:title, :author]
end
