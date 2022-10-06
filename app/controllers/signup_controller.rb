class SignupController < ApplicationController
  def create
    signup = Signup.create(sign)
  end
end
