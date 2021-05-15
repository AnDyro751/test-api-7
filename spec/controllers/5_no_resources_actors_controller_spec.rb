require 'spec_helper'
require 'rspec/rails'
describe "NoResourcesActorsControllerSpec", :type => :request do
  it 'updateAvatarUrlOfNonExistingActor' do
    # {
    #     "comment": "Update avatar URL of actor id 1",
    #     "test_comment": "It tests updating avatar url of non-existing actor",
    #     "test_name": "updateAvatarUrlOfNonExistingActor",
    #     "test_class": "NoResourcesActorsControllerSpec",
    #     "test_priority": 5,
    #     "endpoint": "/actors",
    #     "method": "PUT",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 1,
    #         "login": "davidwright",
    #         "avatar_url": "https://avatars.com/1/davidwright"
    #     },
    #     "response": {},
    #     "response_code": 400
    # }

    params = { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/1/davidwright" }
    put '/actors', params
    expect(response.status).to eq 400
  end

  it 'findAllActors' do
    # {
    #     "comment": "Find all the actors",
    #     "test_comment": "It tests finding all the actors",
    #     "test_name": "findAllActors",
    #     "test_class": "NoResourcesActorsControllerSpec",
    #     "test_priority": 5,
    #     "endpoint": "/actors",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": [],
    #     "response_code": 200
    # }
    get '/actors'
    expect(response.status).to eq 200
  end
end
