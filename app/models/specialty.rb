class Specialty < ApplicationRecord
  has_many :assignments
  has_many :doctors, through: :assignments
end
