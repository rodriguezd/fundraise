# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  event_name :string(255)
#  event_type :string(255)
#  address    :string(255)
#  city       :string(255)
#  zip_code   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  state      :string(255)
#  latitude   :float
#  longitude  :float
#  gmaps      :boolean
#

class Event < ActiveRecord::Base
	acts_as_gmappable

  attr_accessible :event_name, :address, :city, :state, :event_type, :zip_code, :user_id

  belongs_to :user

  def gmaps4rails_address
  	"#{self.address}, #{self.city}, #{self.state}, #{self.zip_code}"
  end

end
