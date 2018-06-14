require "spec_helper"
require 'zombie.rb'
describe Zombie do
    #lets write some tests here..tests are called examples in ruby
    xit "has no brains" do
        zombie = Zombie.new
        zombie.brains.should  be < 1 # called 'expectation'. This is how you assert in rspec
    end
    
    it "has to be hungry" do
        zombie = Zombie.new
        #zombie.hungry?.should be == true
        #zombie.hungry?.should be_true
        zombie.should be_hungry # called predicate matcher
    end
end