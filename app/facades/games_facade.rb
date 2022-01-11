class GamesFacade
  class << self
    def get_questions
      #this needs to be refactored to take a random sampling of questions
      questions = GamesService.get_game[:data][0..4]
      questions.map do |question|
        Question.new(question)
      end
    end
  end
end
