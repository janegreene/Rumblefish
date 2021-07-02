# require 'simplecov'
# SimpleCov.start
require 'rspec'
require 'pry'
require './lib/save_peach'


describe SavePeach do
  it 'should return path to princess' do
    input = SavePeach.new(3, ["---", "-m-", "p--"])

    expect(input).to eq("DOWN"  "LEFT")
  end
end
