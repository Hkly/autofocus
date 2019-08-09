require "rails_helper"

RSpec.describe ItemsController do
  let(:user) { create :user }
  describe '#create' do
    it "creates item in current user's list" do
      sign_in user

      post :create, params: { item: { name: Faker::Food.ingredient } }

      expect(response).to redirect_to '/'
    end
  end
end
