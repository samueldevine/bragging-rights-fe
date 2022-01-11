require 'rails_helper'

RSpec.describe 'Questions Show' do
  before :each do
    @question_1 = Question.new(
      id: 1,
      question: 'Test Question 1',
      correct_answer: 'Answer 1',
      answers: ['Answer 1', 'Answer 2', 'Answer 3', 'Answer 4']
    )
    @question_2 = Question.new(
      id: 2,
      question: 'Test Question 2',
      correct_answer: 'Answer 5',
      answers: ['Answer 5', 'Answer 6', 'Answer 7', 'Answer 8']
    )
    @game = Game.new(
      uid: 30,
      questions: [@question_1, @question_2]
    )
    visit game_question_path(@game.id)
  end
end
