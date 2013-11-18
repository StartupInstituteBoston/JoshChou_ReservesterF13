#this is ruby
#require brings something in
require "spec_helper"
describe Restaurant do 
		context "validation" do
			it "requires a name" do
				restaurant = Restaurant.new
				#vaild? runs method returns boolean if vaild
				restaurant.valid?.should be_false
			end
		end
end 