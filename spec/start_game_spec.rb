require 'rspec'
require './lib/start_game'

RSpec.describe StartGame do
  it "exists" do
    start_game = StartGame.new
    expect(start_game).to be_an_instance_of(StartGame)
  end

  

end
