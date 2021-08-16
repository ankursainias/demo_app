# frozen_string_literal: true

class Image < ApplicationRecord
  # Associations
  belongs_to :imageable, polymorphic: true
  # Validations
  validates_presence_of :name
  # Uploaders
  mount_uploader :name, ImageUploader
end
