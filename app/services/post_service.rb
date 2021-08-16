# frozen_string_literal: true

# Post Service Class
class PostService < ApplicationService
  attr_reader :options

  def initialize(options)
    @options = options
  end

  def call
    Post.all.paginate(page: options[:page]).order('id DESC')
  end
end
