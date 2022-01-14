require 'rails_helper'

RSpec.describe Game do
  before :each do
    @q1_data = {
      id: 1,
      question: 'Test 1',
      correct_answer: 'Answer 1',
      answers: ['Answer 1', 'Answer 2', 'Answer 3', 'Answer 4']
    }
    @q2_data = {
      id: 2,
      question: 'Test 2',
      correct_answer: 'Answer 5',
      answers: ['Answer 5', 'Answer 6', 'Answer 7', 'Answer 8']
    }
    @game = Game.new(questions_answered: 2, score: 0)
  end
  it 'exists' do
    expect(@game).to be_a Game
  end

  it 'has readable attributes' do
    expect(@game.score).to eq 0
  end

  it 'has writable attributes' do
    @game.score += 5000

    expect(@game.score).to eq 5000
  end

  it 'calculates average time to solve the questions' do
    @game.time = 50

    expect(@game.avg_time).to eq 25
  end
end
