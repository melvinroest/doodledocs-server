class User < ApplicationRecord
  # encrypt password
  has_secure_password

  has_one :settings

  # Validations
  validates_presence_of :fullname, :username, :email, :password_digest
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
  validates_inclusion_of :email_opt_out, in: [true, false]
end
