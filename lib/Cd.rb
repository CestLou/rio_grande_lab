# CD < Item
# Tracks (number of)
# Artist
# Run time


require_relative 'Item.rb'
class Cd < Item
	attr_accessor :tracks, :artist, :run_time
	def initialize name, price
		super(name, price)
		@tracks = ""
		@artist = ""
		@run_time = 0
	end
end

newcd = Cd.new "CD", 13
newcd.tracks = "a track"
newcd.artist = "debussy"
newcd.run_time = 20
p newcd
