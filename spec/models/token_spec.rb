# # require 'rails_helper'

# # RSpec.describe Token, type: :model do

# #   before :each do
# #     @token = build(:token)
# #     ENV['CLIENT_ID'] = 'client_id'
# #     ENV['CLIENT_SECRET'] = 'client_secret'
# #     @params = {'refresh_token' => @token.refresh_token,
# #                'client_id' => ENV['CLIENT_ID'],
# #                'client_secret' => ENV['CLIENT_SECRET'],
# #                'grant_type' => 'refresh_token'}
# #   end

# #   describe '#to_params' do
# #     it 'returns hash to request new access token' do
# #       expect(@token.to_params).to eq @params
# #     end
# #   end

# #   describe '#expired?' do
# #     it 'checks if the current token expires' do
# #       token = build(:token, expires_at: Time.now - 10)
# #       expect(token.expired?).to eq true
# #     end
# #   end

# <<<<<<< HEAD
# #   describe '#request_token_from_google' do
# #     it 'create URI object with Google oauth2 url' do
# #       uri = URI('https://www.googleapis.com/oauth2/v3/token')
# #       expect(Net::HTTP).to receive(:post_form).with(uri, @params)
# #       @token.request_token_from_google
# #     end
# #   end
# =======
#   describe '#request_token_from_google' do
#     it 'create URI object with Google oauth2 url' do
#       uri = URI('https://www.googleapis.com/oauth2/v3/token')
#       expect(Net::HTTP).to receive(:post_form).with(uri, @params)
#       @token.request_token_from_google
#     end
#   end
# >>>>>>> 63240ca... fix token and user

# #   describe '#refresh!' do
# #     before :each do
# #       @new_token = {access_token: "new-token",
# #                    expires_at: 3600}
# #       stub_request(:post, "https://www.googleapis.com/oauth2/v3/token").
# #         with(:body => @params).
# #         to_return(:body => @new_token.to_json,
# #                   :status => 200,
# #                   :headers => { 'Content-Length' => 3 })
# #     end

# #     it 'calls request_token_from_google to get new token' do
# #       expect(@token).to receive(:request_token_from_google).and_return(@new_token)
# #       expect(JSON).to receive(:parse).with(@response.body).and_return(@new_token)
# #       @token.refresh!
# #     end

# #     it 'calls JSON parser to extract new token' do
# #       expect(@token).to receive(:request_token_from_google).and_return(@response)
# #       expect(JSON).to receive(:parse).with(@response.body).and_return(@new_token)
# #       @token.refresh!
# #     end

# #     it 'updates the current token with new token' do
# #       @token.stub(:request_token_from_google).and_return(@response)
# #       JSON.stub(:parse).and_return(@new_token)
# #       expect(@token).to receive(:update_attributes)
# #       @token.refresh!
# #     end
# #   end

# <<<<<<< HEAD
# #   describe '#fresh_token' do
# #     it 'returns the lastest token only' do
# #       expect(@token).to receive(:expired?).and_return(false)
# #       @token.fresh_token
# #     end
# #   end
# =======
#   describe '#fresh_token' do
#     it 'returns the lastest token only' do
#       expect(@token).to receive(:expired?).and_return(false)
#       @token.fresh_token
#     end
#   end
# >>>>>>> 63240ca... fix token and user

# # end