require 'spec_helper'

describe RestaurantsController do
	context "#index" do
		it "returns all restaurants" do
			#creates 50 instances of restaurants named yo mama
			(1..50).each { Restaurant.create name: "Yo' Mamas"}
			#calls the index method
			get :index
			
			assigned_restaurants = assigns :restaurants
			expected_restaurants = Restaurant.all
			assigned_restaurants.should == expected_restaurants
		end
	end

end