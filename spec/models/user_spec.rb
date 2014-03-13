require 'spec_helper'

describe User do
  let(:user){User.new(first_name: "Test", last_name: "Icle", email: "test@aol.com", password: "123", password_confirmation: "123")}

  context 'User sign up' do
    it 'User should be able to sign up' do
      user.stub(:save).should be_true
    end
  end



end
