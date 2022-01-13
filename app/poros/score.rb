class Score
  attr_reader :user_id, :score, :game_time, :city, :state, :country, :id

  def initialize(info)
    @user_id        = info[:user_id]
    @score          = info[:score]
    @game_time      = info[:game_time]
    @city           = info[:city]
    @state          = info[:state]
    @country        = info[:country]
  end
end
