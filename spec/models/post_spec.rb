require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'When creating a valid post' do
    it 'should succeed with a valid title' do 
      p = Post.new(title: 'POST TITLE', url: 'www.google.com')
      expect(p.valid?).to eq(true)
    end
  end
  context 'When attempting to create an invalid post' do
    it 'should fail with no title' do 
      p = Post.new(title: '', url: 'www.google.com')
      expect(p.valid?).to eq(false)
    end
    it 'should fail with neither a URL nor a body' do 
      p = Post.new(title: 'trololol')
      expect(p.valid?).to eq(false)
    end
  end
end
