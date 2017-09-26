require 'rails_helper'

describe Comment do
  it 'has an username and a body and belongs to an idea' do
    idea = Idea.create!(name: 'My Awesome Idea Name', description: 'My Awesome Idea Name. Yeah!')
    comment = idea.comments.create(user_name: 'user1', body: 'This is my first comment')

    expect(comment.user_name).to eq('user1')
    expect(comment.body).to eq('This is my first comment')
  end
end