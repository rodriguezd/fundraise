class Event < ActiveRecord::Base
  attr_accessible :address, :city, :name, :type, :zip_code
end
