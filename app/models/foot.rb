class Foot < ApplicationRecord
  validates :number, presence: true
  validates :date_entry, presence: true
end
