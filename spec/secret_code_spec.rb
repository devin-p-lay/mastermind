require 'rspec'
require './lib/secret_code'

RSpec.describe SecretCode do
  it "exists" do
    secret_code = SecretCode.new
    expect(secret_code).to be_an_instance_of(SecretCode)
  end

  it "can get random sample of 4 colors" do
    secret_code = SecretCode.new
    expect(secret_code.colors).to be_an(Array)
    expect(secret_code.colors.length).to eq(4)
  end

end
