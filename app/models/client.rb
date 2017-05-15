class Client < ApplicationRecord
  belongs_to :user
 has_many :appointments
 validates_associated :user
end
