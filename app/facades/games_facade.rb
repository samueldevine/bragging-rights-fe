class GamesFacade
  class << self
    def create_game(user_id)
      questions = GamesService.get_game[:data][0..4]
      user_location = GamesService.get_user_location[:data][:attributes]
      Game.new(
        user_id: User.find(user_id),
        city: user_location[:city],
        state: user_location[:state],
        country: user_location[:country],
        questions: questions
      )
    end
  end
end
