# == Schema Information
#
# Table name: gifts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  time       :string(255)
#  email      :string(255)
#  type       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Gift < ActiveRecord::Base
end
