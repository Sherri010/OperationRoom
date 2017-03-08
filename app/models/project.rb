class Project < ApplicationRecord
  has_many :developers, through: :assignments
  has_many :assignments, dependent: :destroy
end
