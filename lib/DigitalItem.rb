# Oh no the future is here!! Now we need to support digital items. Digital items are things that are downloaded and therefore they do not have a finite quantity.

# DigitalItem < Item
# Quantity should always be 1
# Quantity does not decrease when sold
# Quantity should not increase on stock

require_relative 'Item.rb'
class DigitalItem < Item
	attr_reader :quantity
	attr_accessor :name, :price, :description

    def initialize name, price
        super(name,price)
        @quantity = 1
    end

    def sell amount
    	if @quantity = quantity
        	true
    	else
    		false
    	end
    end

    def stock amount
        @quantity = quantity
    end

end

