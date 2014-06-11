class FeedbacksController < ApplicationController


  before_filter :require_user, :only => [:new, :create, :destroy]

  def new
    @feedback=Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user_id = current_user.id
    if @feedback.save
      # FeedbacksMailer.ordered_to_admin(@feedback).deliver
      redirect_to feedback_viel_index_path
    else
      render 'new'
    end

  end 

  def destroy
    Feedback.find(params[:id]).destroy
    flash[:success] = "Отзыв удален."
    redirect_to admin_feedbacks_path
  end

  def update
    @feedback = Feedback.find(params[:id])
    if @feedback.status == true
      @feedback.update(status: false)
      redirect_to admin_feedbacks_path
    else
      @feedback.status == false
      @feedback.update(status: true)
      redirect_to admin_feedbacks_path
    end
  end


  private

    def feedback_params
      params.require(:feedback).permit(:review)
    end             


end
