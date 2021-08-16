# frozen_string_literal: true

class Post < ApplicationRecord
  # Associations
  has_one :image, as: :imageable, dependent: :destroy
  has_many :comments, dependent: :destroy
  # Validations
  validates :title, presence: true
  validates :body, presence: true
  validates :email, presence: true
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP, message: 'is invalid', if: :email

  # ENUMS
  enum category: { offered: 0, purposed: 1, recommended: 2 }

  accepts_nested_attributes_for :image, allow_destroy: true, reject_if: :all_blank

  self.per_page = 10
end
