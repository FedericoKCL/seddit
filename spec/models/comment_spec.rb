require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'When creating a comment' do
  	it 'should accept valid data' do
  		c = Comment.new(text: "Hello, World!")
  		expect(c.valid?).to eq(true)
  	end
  	it 'should be rejected if blank' do
  		c = Comment.new(text: "")
  		expect(c.valid?).to eq(false)
  	end
  end
end
