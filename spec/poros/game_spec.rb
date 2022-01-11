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
    @game = Game.new(questions: [
      {attributes: @q1_data},
      {attributes: @q2_data}
    ])
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

  it 'creates questions using provided data' do
    expect(@game.questions.length).to eq 2
    expect(@game.questions.first).to be_a Question
    expect(@game.questions.first.question).to eq 'Test 1'
    expect(@game.questions.first.correct_answer).to eq 'Answer 1'
  end

  it 'calculates average time to solve the questions' do
    @game.time = 50

    expect(@game.avg_time).to eq 25
  end
end
