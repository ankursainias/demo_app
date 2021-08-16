require 'rails_helper'

RSpec.describe Comment, type: :model do

  context 'Validation' do
    it 'Comment not valid without message' do
      comment = Comment.create
      expect(false).to eq(comment.valid?)
    end
  end

  context 'Associations' do
    it 'belongs to post' do
      t = Comment.reflect_on_association(:post)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end