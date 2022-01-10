class Game
  attr_reader   :id,
                :user_id,
                :city,
                :state,
                :country

  attr_accessor :score,
                :questions,
                :correct,
                :time

  def initialize(data)
    @id        = data[:id]
    @user_id   = data[:user_id]
    @score     = 0
    @city      = data[:city]
    @state     = data[:state]
    @country   = data[:country]
    @questions = create_questions(data[:questions]) if data[:questions]
    @q_count   = count_questions
    @correct   = 0
    @time      = 0
  end

  def avg_time
    @time / @q_count
  end

  def create_questions(question_data)
    question_data.map do |q|
      Question.new(q)
    end
  end

  # call this method on initialization because the game will delete questions as it's played
  def count_questions
    @questions.length
  end
end
