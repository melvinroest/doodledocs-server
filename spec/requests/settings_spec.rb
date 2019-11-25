require 'rails_helper'

RSpec.describe 'Settings', type: :request do

  let(:user) do
    user = build(:user)
    user.email_confirmation = user.email
    user.settings = create(:settings)
    user.save!
    user
  end

  let(:headers) {valid_headers}

  describe 'GET /settings' do
    before { get '/settings', params: {}, headers: headers }
    it 'returns settings' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'PUT /settings' do
    let(:valid_attributes) do 
      { 
        settings: attributes_for(:settings) 
      }
    end
    
    # If it were me, I'd do put /settings as there is only one of it, but ember defaults to /settings/:id
    before { put "/settings/1", params: valid_attributes.to_json, headers: headers }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
  end

end

  # request test
  #   describe GET
  #     it
  #       returns data model && 200
  #       returns null && 404
  #   describe PUT
  #     it
  #       updates && 204