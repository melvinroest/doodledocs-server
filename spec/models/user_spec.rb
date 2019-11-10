require 'rails_helper'

# Test suite for User model
# Docs: https://www.rubydoc.info/github/thoughtbot/shoulda-matchers/Shoulda/Matchers/ActiveModel
RSpec.describe User, type: :model do
  
  # Association test
  it { should have_one(:settings) }

  # Validation tests
  it { should validate_presence_of(:fullname) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_confirmation_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_inclusion_of(:email_opt_out).in?([true, false])}

end