class User < ApplicationRecord
    # encrypt password
  has_secure_password

  # Validations
  validates_presence_of :fullname, :username, :email, :password_digest, :email_opt_out
end
