require 'spec_helper'
describe "Post Routes" do
	describe "#show" do
		let(:post) {FactoryGirl.create(:post)}
		it "should display zip" do
		get "/posts/#{post.id}"
		
		expect(response.body).to include(post.zip.to_s)


		end
	end
end