class Game
  attr_reader :uid,
              :score,
              :city,
              :state,
              :country,
              :correct,
              :time

  def initialize(data)
    @uid     = data[:uid]
    @score   = data[:score]
    @city    = data[:city]
    @state   = data[:state]
    @country = data[:country]
    @correct = 0
    @time    = 0
  end

  def avg_time
    @time / 5
  end
end
