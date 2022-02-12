class Game
  attr_reader   :user_id,
                :correct_answers,
                :questions_answered,
                :ip_address
  attr_accessor :time,
                :score

  def initialize(data)
    @user_id            = data[:user_id]
    @score              = data[:score]
    @time               = data[:time]
    @correct_answers    = data[:correct_answers]
    @questions_answered = data[:questions_answered]
    @ip_address         = data[:ip_address]
  end

  def avg_time
    @time / @questions_answered
  end

  def formatted_time
    mins = (@time / 60)
    secs =  @time % 60
    "#{mins} minute(s) & #{secs} seconds"
  end

  def final_score
    if @score < 0
      @score = 0
    else
      @score
    end
  end
end
