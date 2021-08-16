require 'rails_helper'

RSpec.describe Post, type: :model do

  context 'Validation' do
    it 'Image not added without name' do
      image = Image.create
      expect(false).to eq(image.valid?)
    end
  end

  context 'Associations' do
    it 'belongs to imageable' do
      t = Image.reflect_on_association(:imageable)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end