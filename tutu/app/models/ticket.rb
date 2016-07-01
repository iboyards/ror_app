class Ticket < ActiveRecord::Base

  validates :code, presence: true
end