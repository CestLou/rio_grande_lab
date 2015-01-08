require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before :context do
    @digitalitems = DigitalItem.new("The Lovely Bones", 12.99)
  end

  describe "Initialization" do
  	it "is an instance of the DigitalItem class" do 
  		expect(@digitalitems).to be_instance_of(DigitalItem)
  	end
  	it "is assigned a name" do 
  		expect(@digitalitems.name).to eq("The Lovely Bones")
  	end
  	it "is assigned a price" do 
  		expect(@digitalitems.price).to eq(12.99)
  	end
  end

  #check that it is an extended from Item
  describe "DigitalItem's inheritance" do
  	it "is extended from Item" do
  		expect(@digitalitems).to be_kind_of(Item)
  	end
  end

  #check that it is an instance of DigitalItem
  describe "Instance" do
  	it "is an instance of the DigitalItem class" do 
  		expect(@digitalitems).to be_instance_of(DigitalItem)
  	end
  end

  #check getters and setters
  describe "Getters and Setters" do
  	it "should be able to set name of digitalitems" do
  		@digitalitems.name = "Lord of the Rings"
  		expect(@digitalitems.name).to eq("Lord of the Rings")
  	end
  	it "should be able to set price of digitalitems" do
  		@digitalitems.price = 100
  		expect(@digitalitems.price).to eq(100)
  	end
  	it "should be able to set the description" do
  		@digitalitems.description = "J. R. R. Tolkien"
  		expect(@digitalitems.description).to eq("J. R. R. Tolkien")
  	end
  	it "should be able to get the quantity" do
  		expect(@digitalitems.quantity).to eq(1)
  	end
  end

#check methods
  # describe "Methods" do
  #   it "should not be able to stock" do
  #     result = @digitalitems.stock 3
  #     expect(result).to eq(false)
  #     expect(@digitalitems.quantity).to eq(1)
  #   end
    # it "should be able to sell more digitalitems than we have" do
    #   result = @digitalitems.sell 6
    #   expect(result).to eq(true)
    #   expect(@digitalitems.quantity).to eq(1)
    # end
    # it "should be able to sell digitalitems and update quantity" do
    #   result = @digitalitems.sell 3
    #   expect(result).to eq(true)
    #   expect(@digitalitems.quantity).to eq(2)
    # end    
  # end
end