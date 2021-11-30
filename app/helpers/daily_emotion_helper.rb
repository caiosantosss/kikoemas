module DailyEmotionHelper
  def fontawesome(emotion)
      case emotion
      when 'Sad' then "far fa-frown"
      when 'Very Sad' then "far fa-sad-tear"
      when 'Neutral' then "far fa-meh"
      when 'Happy' then "far fa-smile"
      when 'Very Happy' then "far fa-laugh-beam"
      end
    end
end
