# frozen_string_literal: true

class CommentService < ApplicationService
  attr_reader :options

  def initialize(options)
    @options = options
  end

  def call
    Comment.where(post_id: options[:post_id])
           .paginate(page: options[:page], per_page: 10).order('id desc')
  end
end
