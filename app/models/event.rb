class Event < ActiveRecord::Base
  attr_accessible :address, :city, :name, :event_type, :zip_code
end
