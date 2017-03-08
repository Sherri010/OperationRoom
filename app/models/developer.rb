class Developer < ApplicationRecord
  has_many :projects, through: :assignments
  has_many :assignments, dependent: :destroy
end
