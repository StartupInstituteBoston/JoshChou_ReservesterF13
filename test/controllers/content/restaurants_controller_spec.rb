require 'spec_helper'
describe RestaurantController do 
	describe "#show" do
		let(restaurant) {FactoryGirl.create(:restaurant)}

		it "should display shwow template for restaurant" do
			get :show, id: restaurant.id 

			expect(assigns(:restaurant)).to eq restaurant

			expect(response).to render_template("show")
		end
	end
	
end