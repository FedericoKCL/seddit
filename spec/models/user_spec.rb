require 'rails_helper'

RSpec.describe User, type: :model do
	context 'When attempting to create a valid user' do
		it "should succeed with valid data" do
			u = User.new(email: "hello@world.com", username: "test")
			expect(u.valid?).to eq(true)  		
  	end
	end
  context 'When attempting to create an invalid user' do
  	it "should fail with a blank username" do
  		u = User.new(email: "hello@example.com", username: "")
  		expect(u.valid?).to eq(false)
  	end
  	it "should fail with an invalid email address" do 
  		u = User.new(email:"$@yahoo.c0m", username: "testusername")
  		expect(u.valid?).to eq(false)
  	end
  	it "should fail if the email is not unique" do 
  		u = User.new(email: "boring@email.com", username: "firstuser")
  		u.save!
  		v = User.new(email: "boring@email.com", username: "seconduser")
  		expect(v.valid?).to eq(false)
  	end
  	it "should fail if the username is not unique" do 
  		u = User.new(email: "different@email.com", username: "firstuser")
  		u.save!
  		v = User.new(email: "boring@email.com", username: "firstuser")
  		expect(v.valid?).to eq(false)
  	end
  	it "should fail with a username that is too long (>50 chars)" do
  		u = User.new(email: "dave@me.com", username: "sdfjhadfgjhsdfgjsdfjhsdfshdfvsdgsdgfsfdgfdsfgsdfgsdgsdfgsd")
  		expect(u.valid?).to eq(false)
  	end
	end
end
