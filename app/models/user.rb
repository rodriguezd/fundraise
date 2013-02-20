# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  address       :string(255)
#  city          :string(255)
#  zip_code      :string(255)
#  email         :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  phone_number  :integer
#  password_hash :string(255)
#  password_salt :string(255)
#

class User < ActiveRecord::Base

  attr_accessible :address, :city, :email, :first_name, :last_name, :phone_number,
  	:zip_code, :password, :password_confirmation

  	attr_accessor :password
  	before_save :encrypt_password

  	# validates_confirmation_of :password
	  # validates_presence_of :password, :on => :create
	  # validates_presence_of :email
	  # validates_uniqueness_of :email

	  has_many :events, :dependent => :destroy

	  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
