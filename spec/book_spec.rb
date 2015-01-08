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
  describe "Book's inheritance" do
  	it "is extended from Item" do
  		expect(@book).to be_kind_of(Item)
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
  	it "should be able to set the description" do
  		@book.description = "J. R. R. Tolkien"
  		expect(@book.description).to eq("J. R. R. Tolkien")
  	end
  	it "should be able to get the quantity" do
  		expect(@book.quantity).to eq(0)
  	end
  end

#check methods
  describe "Methods" do
    it "should be able to stock" do
      result = @book.stock 5
      expect(result).to eq(true)
      expect(@book.quantity).to eq(5)
    end
    it "should not be able to sell more books than we have" do
      result = @book.sell 6
      expect(result).to eq(false)
      expect(@book.quantity).to eq(5)
    end
    it "should be able to sell books and update quantity" do
      result = @book.sell 3
      expect(result).to eq(true)
      expect(@book.quantity).to eq(2)
    end    
  end
end