require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before :context do
    @bluray = Bluray.new "LOtR: Desolation of Smaug", 50
  end

  #check inilization
  describe "Initialization" do
  	it "is an instance of the Bluray class" do
  		expect(@bluray).to be_instance_of Bluray
  	end
  	it "is assigned a name" do 
  		expect(@bluray.name).to eq("LOtR: Desolation of Smaug")
  	end
  	it "is assigned a price" do 
  		expect(@bluray.price).to eq(50)
  	end
  end

  #check that it is an extended from Item
  describe "Bluray's inheritance" do
  	it "is extended from Item" do
  		expect(@bluray).to be_kind_of(Item)
  	end
  end

  #check that it is an instance of Bluray 
  describe "Instance" do
  	it "is an instance of the Bluray class" do 
  		expect(@bluray).to be_instance_of(Bluray)
  	end
  end

  #check getters and setters
  describe "Getters and Setters" do
    	it "should be able to set name of bluray" do
  		@bluray.name = "Hunger Games"
  		expect(@bluray.name).to eq("Hunger Games")
  	end
  	it "should be able to set price of bluray" do
  		@bluray.price = 100
  		expect(@bluray.price).to eq(100)
  	end
  	it "should be able to set the description" do
  		@bluray.description = "A Movie About A Pissed Off Dragon and Some Small People"
  		expect(@bluray.description).to eq("A Movie About A Pissed Off Dragon and Some Small People")
  	end
  	it "should be able to get the quantity" do
  		expect(@bluray.quantity).to eq(0)
  	end
  end
#check methods
  	describe "Methods" do
  	  it "should be able to stock" do
  	    result = @bluray.stock 5
  	    expect(result).to eq(true)
  	    expect(@bluray.quantity).to eq(5)
  	  end
  	  it "should not be able to sell more blurays than we have" do
  	    result = @bluray.sell 6
  	    expect(result).to eq(false)
  	    expect(@bluray.quantity).to eq(5)
  	  end
  	  it "should be able to sell blurays and update quantity" do
  	    result = @bluray.sell 3
  	    expect(result).to eq(true)
  	    expect(@bluray.quantity).to eq(2)
  	  end    
  	end
end