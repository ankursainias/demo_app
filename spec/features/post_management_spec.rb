require 'rails_helper'

RSpec.feature 'Post management', type: :feature do
  scenario 'Visit post Form' do
    visit '/posts'
    click_link 'New Post'
    expect(page).to have_text('New Post')
  end

  scenario 'Visit post list' do
    visit '/posts'
    expect(page).to have_text('Show')
    expect(page).to have_text('Edit')
    expect(page).to have_text('Destroy')
    expect(page).to have_text('Comments')
  end

  scenario 'Visit post comment page' do
    visit '/posts/1/comments'
    expect(page).to have_selector("input[type=submit][value='Add Comment']")
  end
end
