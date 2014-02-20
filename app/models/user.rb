# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  nickname          :string(255)
#  first_name        :string(255)
#  last_name         :string(255)
#  email             :string(255)      not null
#  crypted_password  :string(255)      not null
#  password_salt     :string(255)      not null
#  admin             :boolean          default(FALSE), not null
#  persistence_token :string(255)      not null
#  login_count       :integer          default(0), not null
#  last_request_at   :datetime
#  last_login_at     :datetime
#  current_login_at  :datetime
#  last_login_ip     :string(255)
#  current_login_ip  :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class User < ActiveRecord::Base
  acts_as_authentic do |config|
    config.login_field = :email
    config.logged_in_timeout = 24.hours
    config.merge_validates_length_of_login_field_options :within => 6..50
    config.merge_validates_length_of_password_field_options :within => 6..50
    config.merge_validates_length_of_password_confirmation_field_options :within => 6..50
  end

    validates :email, :presence => true

  def name
    if first_name.present? || last_name.present?
      "#{first_name} #{last_name}"
    else
      nickname.presence || email
    end
  end


end
