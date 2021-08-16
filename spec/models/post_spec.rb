require 'rails_helper'

RSpec.describe Post, type: :model do

  context 'Validation' do
    it 'Post Not Create Without any Field Value' do
      post = Post.create
      expect(false).to eq(post.valid?)
    end

    it 'Post email should be valid format' do
      post = FactoryBot.build(:invalid_email_post)
      expect(false).to eq(post.valid?)
    end

    it 'Post title can not be blank' do
      post = FactoryBot.build(:post_without_title)
      expect(false).to eq(post.valid?)
    end

    it 'Post body can not be blank' do
      post = FactoryBot.build(:post_without_body)
      expect(false).to eq(post.valid?)
    end

    it 'Post category can not be blank' do
      post = FactoryBot.build(:post_without_category)
      expect(false).to eq(post.valid?)
    end

    it 'Post email can not be blank' do
      post = FactoryBot.build(:post_without_email)
      expect(false).to eq(post.valid?)
    end
  end

  context 'Associations' do
    it 'has one image' do
      t = Post.reflect_on_association(:image)
      expect(t.macro).to eq(:has_one)
    end

    it 'has many comments' do
      t = Post.reflect_on_association(:comments)
      expect(t.macro).to eq(:has_many)
    end
  end
  
end