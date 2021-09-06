require 'rspec'
require './lib/secret_code'
require './lib/evaluating_guess'
require './lib/message'
require './lib/player'

RSpec.describe Player do
  it 'exist' do
    player = Player.new
    expect(player).to be_an_instance_of(Player)
  end

  it "can receive player input" do

  end
end
