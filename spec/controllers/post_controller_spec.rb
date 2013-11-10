require 'spec_helper'
describe PostsController do 
	describe "#show" do
		let(:post) {FactoryGirl.create(:post)}

		it "should display shwow template for post" do
			get :show, id: post.id 

			expect(assigns(:post)).to eq post

			expect(response).to render_template("show")
		end
	end
	
end