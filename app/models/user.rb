class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :lockable
  # has_secure_password
  has_many :posts
  acts_as_voter
  # validates_length_of :encrypted_password, minimum: 10, :message => "you need to use 10 characters"
  validates_uniqueness_of :email
  # validates_format_of :email, with:/.+@.+\..+/
  validates_presence_of :first_name, :last_name
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/default_image.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
