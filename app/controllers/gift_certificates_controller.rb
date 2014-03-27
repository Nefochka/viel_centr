class GiftCertificatesController < ApplicationController

  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  def new
    @gift_certificate=GiftCertificate.new
  end

  def create
    @gift_certificate = GiftCertificate.new(gift_certificate_params)
    if @gift_certificate.save
      Gift_certificatesMailer.ordered_to_client(@gift_certificate).deliver
      Gift_certificatesMailer.ordered_to_admin(@gift_certificate).deliver
      redirect_to @gift_certificate
    else
      render 'new'
    end

  end 

  def show
    @gift_certificate = GiftCertificate.find(params[:id])
  end

  private

    def set_gift_certificate
      @gift_certificate = GiftCertificate.find(params[:id])
    end

    def gift_certificate_params
      params.require(:gift_certificate).permit(:name, :phone, :time, :email)
    end             

end
