class User < ActiveRecord::Base
  attr_accessible :address, :city, :email, :first_name, :last_name, :zip_code
end
