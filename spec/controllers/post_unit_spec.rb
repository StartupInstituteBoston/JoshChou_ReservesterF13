require 'spec_helper'
describe PostsController do
  describe "GET 'show'" do
    context "when a restaurant is present" do
      let(:post) { FactoryGirl.build(:post, :name => 'Vinchnzos') }
      before { Post.stub(:find_by) { post } }
#stub = before each example, I want user object to be returned
      it "retrieves the name" do
        get 'show', :id => 'anything'
        expect(assigns(:post).name).to eq('Vinchnzos')
      end
    end

    context "when no restaurnat is present" do
      before { Post.stub(:find_by) { nil } }

      it "retrieves the name" do
        get 'show', :id => 'anything'
        expect(assigns(:post)).to be_nil
      end
    end
  end
end