require 'spec_helper'

describe DeviseController do
  let(:user){User.new(first_name: "Test", last_name: "Icle", email: "test@aol.com", password: "123", password_confirmation: "123")}

  it 'Should redirect to homepage' do
      mock_user = double(:user)
      # mock_user.should_recieve(:create).and_return(:true)
      mock_user.stub(:save => true)
      User.stub(:new => mock_user)

      post user_registration_path
      # user.stub(:save)
      expect(response).to redirect_to(:root)
      # user.stub(:save)
      # response.should route_to('home#index')
      # {action: new_user_registration_path, controller: '/users/sign_up'}.should route_to('home#index')
  end
end
