class Course < ApplicationRecord
  # validates fields with the following criteria:
  validates :name, presence: true, length: { minimum: 4, max: 50 }
  validates :short_name, presence: true, length: { minimum: 2, max: 10 }
  validates :description, presence: true, length: { minimum: 10, max: 500 }
end
