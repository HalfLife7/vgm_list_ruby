require 'rails_helper'

RSpec.describe 'Games', type: :request do
  describe 'GET /games' do
    let!(:game) { FactoryBot.create(:game) }

    it 'returns success code' do
      get '/api/v1/games'
      expect(response).to have_http_status(200)
    end

    it 'returns all games' do
      get '/api/v1/games'
      expect(JSON.parse(response.body)).to include_json([{
                                                          id: game.id, name: game.name
                                                        }])
    end

    context 'when it has query params' do
      context 'when limiting the number of games returned' do
        let(:query_params) { { limit: 3 } }
        before { FactoryBot.create_list(:game, 6) }

        it 'returns 3 results' do
          get '/api/v1/games', params: query_params
          expect(JSON.parse(response.body).size).to eq(3)
        end
      end
    end
  end

  describe 'get /games/:id' do
    let!(:game) { FactoryBot.create(:game) }

    it 'returns 404 for invalid id' do
      get '/api/v1/games/99999'
      expect(response).to have_http_status(404)
    end

    it 'returns a specific game' do
      get "/api/v1/games/#{game.id}"
      expect(JSON.parse(response.body)['id']).to eq(JSON.parse(game.to_json)['id'])
    end
  end

  describe 'post /games' do
    subject(:post_game) { post '/api/v1/games', params: params }
    let!(:params) do
      {
        name: Faker::Game.title,
        category: Game.categories.keys.sample(1).first,
        summary: Faker::Lorem.sentences.join(' ')
      }
    end

    context 'valid params' do
      it 'creates a new game' do
        expect { post_game }.to change { Game.all.size }.by 1
        expect(Game.all.first['name']).to eq(params[:name])
      end

      it 'returns a 200 status' do
        post_game
        expect(response).to be_successful
        expect(response.status).to eq(200)
      end
    end

    context 'invalid params' do
      it 'returns name is empty error' do
        params[:name] = ''
        post_game
        expect(JSON.parse(response.body)['error']).to eq('name is empty')
        expect(response.status).to eq(400)
      end

      it 'returns empty name error' do
        params.delete(:name)
        post_game
        expect(JSON.parse(response.body)['error']).to eq('name is missing, name is empty')
        expect(response.status).to eq(400)
      end
    end
  end

  describe 'patch /games/:id' do
    subject(:patch_game) { patch "/api/v1/games/#{game.id}", params: params }
    let!(:game) { FactoryBot.create(:game) }

    context 'valid params' do
      let(:params) { { summary: 'This is an updated summary.' } }
      it 'updates the game\'s summary' do
        expect { patch_game }.to change { Game.find(game.id)['summary'] }.to(params[:summary])
      end

      it 'returns a success response' do
        patch_game
        expect(JSON.parse(response.body)['message']).to eq('Game updated successfully')
      end
    end

    context 'invalid params' do
      context 'name is blank' do
        let(:params) do
          {
            name: ''
          }
        end
        it 'returns an error message' do
          patch_game
          expect(JSON.parse(response.body)['error']).to eq('name is empty')
        end
      end
    end
  end

  describe 'delete /games/:id' do
    subject(:delete_game) { delete "/api/v1/games/#{delete_id}" }
    let!(:game) { FactoryBot.create(:game) }
    context 'valid params' do
      let(:delete_id) { game.id }
      it 'deletes the game' do
        expect { delete_game }.to change { Game.all.size }.from(1).to(0)
      end

      it 'returns a success message' do
        delete_game
        expect(JSON.parse(response.body)['message']).to eq('Game deleted successfully')
        expect(response.status).to eq(200)
      end
    end

    context 'invalid params' do
      let(:delete_id) { game.id + 1 }

      it 'returns an error message' do
        delete_game
        expect(JSON.parse(response.body)['error']).to eq("Couldn't find Game with 'id'=#{delete_id}")
      end

      it 'returns a 500' do
        delete_game
        expect(response.status).to eq(500)
      end
    end
  end
end
