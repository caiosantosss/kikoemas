class DailyEmotionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  def create
    @daily_emotion = DailyEmotion.new(daily_emotion_params)
    @daily_emotion.date = Date.today
    @daily_emotion.user = current_user
    if @daily_emotion.save
      raise
      redirect_to root_path
    end
    authorize @daily_emotion
  end

  private

  def daily_emotion_params
    params.require(:daily_emotion).permit(:emotion)
  end
end
