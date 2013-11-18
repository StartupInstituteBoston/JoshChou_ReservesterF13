require 'spec_helper'

describe "login" do 

context "user does not exist"do
	it "display error" do
		expect(response.body).to include("user does not exist")
	end
end


context "user has account"do 
	context "password is correct" do 
		it "logs in user" do
		end
	end
		it "redirect to index page" do
			expect(response.body).to include("Welcome")
		end
	end
	

	context "password is incorrect"  do
		it "promps user to re-type password" do
			expect(response.body).to include("password is incorrect")
	end
end
end



