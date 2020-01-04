class Student < ApplicationRecord
  # validates fields with the following criteria:
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { minimum: 4, max: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }

  # add password functionality:
  has_secure_password()
end
