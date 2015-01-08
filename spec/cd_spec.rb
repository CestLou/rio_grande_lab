require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new "Britney Spears", 10
  end

  #check inilization
  describe "Initialization" do
  	it "is an instance of the Cd class" do
  		expect(@cd).to be_instance_of Cd
  	end
  	it "is assigned a name" do 
  		expect(@cd.name).to eq("Britney Spears")
  	end
  	it "is assigned a price" do 
  		expect(@cd.price).to eq(10)
  	end
  end

  #check that it is an extended from Item
  describe "Cd's Inheritance" do
  	it "is extended from Item" do
  		expect(@cd).to be_kind_of(Cd)
  	end
  end

  #check getters and setters
  describe "Getters and Setters" do
    	it "should be able to set name of cd" do
  		@cd.name = "NSYNC"
  		expect(@cd.name).to eq("NSYNC")
  	end
  	it "should be able to set price of cd" do
  		@cd.price = 100
  		expect(@cd.price).to eq(100)
  	end
  	it "should be able to set the description" do
  		@cd.description = "Goddess of the 2000's"
  		expect(@cd.description).to eq("Goddess of the 2000's")
  	end
  	it "should be able to get the quantity" do
  		expect(@cd.quantity).to eq(0)
  	end
  end

  #check that it is an instance of Cd
  describe "Instance" do
  	it "is an instance of the Cd class" do 
  		expect(@cd).to be_instance_of(Cd)
  	end
  end
  #check methods
	describe "Methods" do
	  it "should be able to stock" do
	    result = @cd.stock 5
	    expect(result).to eq(true)
	    expect(@cd.quantity).to eq(5)
	  end
	  it "should not be able to sell more cds than we have" do
	    result = @cd.sell 6
	    expect(result).to eq(false)
	    expect(@cd.quantity).to eq(5)
	  end
	  it "should be able to sell cds and update quantity" do
	    result = @cd.sell 3
	    expect(result).to eq(true)
	    expect(@cd.quantity).to eq(2)
	  end    
	end
end