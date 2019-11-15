# require "email_validation"
validates :my_email_attribute, email: true

puts EmailValidator.valid?('narf@example.com')