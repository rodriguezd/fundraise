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
#  state         :string(255)
#  admin         :boolean
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
