class VielController < ApplicationController

  skip_before_action :require_user

  before_action :find_menu_item

  def index
    @menu_item = 'home' 
  end

  def massage
  end
  
  def cosmetics
  end

  def feedback
    @feedbacks_list=Feedback.all
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

  def bychik
  end

  def chernyakova
  end

  def mbutuka
  end

  def hramcovskaya
  end

  def vasilenko
  end

  def create
  end

  def new
  end
  
  def home
  end

  private

  def find_menu_item
    @menu_item = action_name
  end

  def find_side_menu_item
    @side_menu_item = action_name
  end

  def find_gift_certificate_item
    @gift_certificate_item = action_name
  end

end
