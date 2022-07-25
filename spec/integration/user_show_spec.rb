require 'rails_helper'
require 'helpers/create_test_models'
require 'helpers/models_helper'

RSpec.describe 'Users Show page', type: :feature do
  before do
    @username1 = 'Tom'
    @user1 = create_user(@username1)
    create_posts_for_user(@user1, count: 4)
    visit user_path(id: @user1.id)
  end

  it 'should show the profile picture of a user' do
    find("img[src='https://www.example.com/image']")
  end

  it 'should show the static text' do
    expect(page).to have_content(`#{@username1}\'s Most Recent Posts`)
  end

  it 'should show the User\s name' do
    expect(page).to have_content @username1
  end

  it 'should show number of user posts ' do
    expect(page).to have_content('Number of posts: 4')
  end

  it 'should show number of user bio' do
    expect(page).to have_content('Teacher from Kenya')
  end

  it 'should show a post title' do
    expect(page).to have_content 'Post 3'
  end

  it 'should show user\s first three posts' do
    expect(page).to have_selector(:link_or_button, 'See Post', count: 3)
  end

  it 'should redirect to all posts when we click on the button' do
    click_link 'See all posts'
    expect(page).to have_current_path(user_posts_path(@user1))
  end
end
