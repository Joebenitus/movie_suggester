require 'rails_helper'

describe "get all movies route", :type => :request do
  let!(:movies) { FactoryBot.create_list(:movie, 20)}

  before { get '/movies' }

  it 'returns a list of all movies' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end