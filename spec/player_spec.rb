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

  it "lets the player cheat" do
    player = Player.new
    expect(player.player_cheat).to eq(pumpkin_eater)
  end
end
