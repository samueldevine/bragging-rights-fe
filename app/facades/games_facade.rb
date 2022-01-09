class GamesFacade
  class << self
    def get_game
      # not sure yet if we're getting a whole game (array of questions), or a single question at a time. this method will need to be modified accordingly.
      GamesService.get_game
    end
  end
end
