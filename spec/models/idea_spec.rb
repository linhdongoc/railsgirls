require 'rails_helper'

describe Idea do
  it 'has a name' do
    idea = Idea.create!(name: 'My Awesome Idea Name')
    second_idea = Idea.create!(name: 'My Second Idea Name')

    expect(idea.name).to eq('My Awesome Idea Name')
    expect(second_idea.name).to eq('My Second Idea Name')
  end

  it 'has a description' do
    idea = Idea.create!(description: 'My Awesome Idea Name. Yeah!')
    second_idea = Idea.create!(description: 'My Second Idea Name. Yeah!')

    expect(idea.description).to eq('My Awesome Idea Name. Yeah!')
    expect(second_idea.description).to eq('My Second Idea Name. Yeah!')
  end

  it 'has many comments' do
    Idea.create(name: 'My Awesome Idea Name', description: 'My Awesome Idea Name. Yeah!')
        .comments.create([
                             {user_name: 'user1', body: 'This is my first comment'},
                             {user_name: 'user2', body: 'This is my second comment'}
                         ])
    idea = Idea.last

    expect(idea.name).to eq('My Awesome Idea Name')
    expect(idea.description).to eq('My Awesome Idea Name. Yeah!')

    expect(idea.comments.first.user_name).to eq('user1')
    expect(idea.comments.first.body).to eq('This is my first comment')

    expect(idea.comments.last.user_name).to eq('user2')
    expect(idea.comments.last.body).to eq('This is my second comment')
  end
end
