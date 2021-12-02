module DailyEmotionHelper
  def fontawesome(emotion)
      case emotion
      when 'Sad' then "fas fa-frown bg-sad text-sad "
      when 'Very Sad' then "fas fa-sad-tear bg-very-sad text-dark-sad "
      when 'Neutral' then "fas fa-meh bg-neutral text-neutral "
      when 'Happy' then "fas fa-smile bg-happy text-happy "
      when 'Very Happy' then "fas fa-laugh-beam bg-very-happy text-very-happy "
      end
    end
end
