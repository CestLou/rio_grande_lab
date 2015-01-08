require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before :context do
    @book = Book.new("The Lovely Bones", 12.99)
  end

  describe "Initialization" do
  	it "is an instance of the Book class" do 
  		expect(@book).to be_instance_of(Book)
  	end
  	it "is assigned a name" do 
  		expect(@book.name).to eq("The Lovely Bones")
  	end
  	it "is assigned a price" do 
  		expect(@book.price).to eq(12.99)
  	end
  end

  #check that it is an extended from Item
  describe "Inheritance" do
  	it "is extended from item" do
  		expect(Book.superclass).to eq(Item)
  	end
  end

  #check that it is an instance of Book
  describe "Instance" do
  	it "is an instance of the Book class" do 
  		expect(@book).to be_instance_of(Book)
  	end
  end

  #check getters and setters
  describe "Getters and Setters" do
  	it "should be able to set name of book" do
  		@book.name = "Lord of the Rings"
  		expect(@book.name).to eq("Lord of the Rings")
  	end
  	it "should be able to set price of book" do
  		@book.price = 100
  		expect(@book.price).to eq(100)
  	end
  	# Already checked setters in Initialization
  end

end