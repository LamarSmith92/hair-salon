class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :client
  validates :first_name, presence: true
  validates :phone, presence: true
  validates :date, presence: true
end
