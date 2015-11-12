class User < ActiveRecord::Base
	has_secure_password
  has_many :posts
  acts_as_voter
  validates_length_of :password_digest, minimum: 10, :message => "fuck testing"
  validates_uniqueness_of :email
  validates_format_of :email, with:/.+@.+\..+/
  validates_presence_of :first_name, :last_name, :email, :password_digest
  
end
