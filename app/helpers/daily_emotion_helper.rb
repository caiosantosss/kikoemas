module DailyEmotionHelper
  def fontawesome(emotion)
      case emotion
      when 'Sad' then "far fa-frown"
      when 'Very Sad' then "far fa-frown"
      when 'Neutral' then "far fa-meh"
      when 'Happy' then "far fa-frown"
      when 'Very Happy' then "far fa-frown"
      end
    end
end
