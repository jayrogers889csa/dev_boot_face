require 'spec_helper'

describe User do
  let(:user){User.new(first_name: "Test", last_name: "Icle", email: "test@aol.com", password: "123", password_confirmation: "123")}

  context 'User sign up' do
    it 'User should be able to sign up' do
      user.stub(:save).should be_true
    end

    it 'Should redirect to homepage' do
      user.stub(:save).should redirect_to('/')
      # response.should redirect_to(root)
      # {get: '/users/sign_up'}.should route_to('home#index')
    end
  end

end
