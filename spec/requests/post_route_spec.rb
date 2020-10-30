require 'rails_helper'

describe 'post a movie route', :type => :request do
  
  before do
    post '/movies', params: { :title => 'test_title' }
  end

  it 'returns the movie title' do
    expect(JSON.parse(response.body)['title']).to eq('test_title')
  end

  it 'returns created status' do
    expect(response).to have_http_status(:created)
  end
end