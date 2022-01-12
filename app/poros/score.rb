class Score
  attr_reader :score, :game_time, :city, :state, :country, :id
  def initialize(attr)
    @score = attr[:score]
    @game_time = attr[:game_time]
    @city = attr[:city]
    @state = attr[:state]
    @country = attr[:country]
  end
end
