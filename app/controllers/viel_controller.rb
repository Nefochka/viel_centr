class VielController < ApplicationController
  before_action :find_menu_item

  def index
    @menu_item = 'home' 
  end

  def massage
  end
  
  def cosmetics
  end

  def gallery
  end

  def service
  end

  def contacts
  end
  
  def about_us
  end

  def cosmetology
  end

  def spa_procedures
  end

  def wraps
  end

  def peelings
  end

  def education
  end

  def gift_certificate
  end

  def program_certificates
  end
  
  def spa_etiquette
  end

  private

  def find_menu_item
    @menu_item = action_name
  end

  def find_side_menu_item
    @side_menu_item = action_name
  end
end
