class Game
  attr_reader   :user_id,
                :score,
                :time,
                :correct_answers,
                :questions_answered,
                :ip_address

  def initialize(data)
    binding.pry
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
end
