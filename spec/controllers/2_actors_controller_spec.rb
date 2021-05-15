require 'spec_helper'
require 'rails_helper'
require 'rspec/rails'
RSpec.describe "ActorsControllerSpec", :type => :request do

  it 'updateAvatarUrl' do

    # {
    #     "comment": "Update avatar URL of actor id 1",
    #     "test_comment": "It tests updating avatar url of actor",
    #     "test_name": "updateAvatarUrl",
    #     "test_class": "ActorsControllerSpec",
    #     "test_priority": 2,
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
    #     "response_code": 200
    # }

    params = { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/1/davidwright" }
    put '/actors', params
    expect(response.status).to eq 200

    # {
    #     "comment": "Update avatar URL of actor id 2",
    #     "test_comment": "It tests updating avatar url of actor",
    #     "test_name": "updateAvatarUrl",
    #     "test_class": "ActorsControllerSpec",
    #     "test_priority": 2,
    #     "endpoint": "/actors",
    #     "method": "PUT",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 2,
    #         "login": "nicole48",
    #         "avatar_url": "https://avatars.com/2/nicole48"
    #     },
    #     "response": {},
    #     "response_code": 200
    # }

    params = { "id": 2, "login": "nicole48", "avatar_url": "https://avatars.com/2/nicole48" }
    put '/actors', params
    expect(response.status).to eq 200

    # {
    #     "comment": "Update avatar URL of actor id 3",
    #     "test_comment": "It tests updating avatar url of actor",
    #     "test_name": "updateAvatarUrl",
    #     "test_class": "ActorsControllerSpec",
    #     "test_priority": 2,
    #     "endpoint": "/actors",
    #     "method": "PUT",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 3,
    #         "login": "jade33",
    #         "avatar_url": "https://avatars.com/3/jade33"
    #     },
    #     "response": {},
    #     "response_code": 200
    # }

    params = { "id": 3, "login": "jade33", "avatar_url": "https://avatars.com/3/jade33" }
    put '/actors', params
    expect(response.status).to eq 200
  end

  it 'updateAvatarUrlAndLogin' do
    # {
    #     "comment": "Update avatar URL of actor id 1",
    #     "test_comment": "It tests updating avatar url and login of actor",
    #     "test_name": "updateAvatarUrlAndLogin",
    #     "test_class": "ActorsControllerSpec",
    #     "test_priority": 2,
    #     "endpoint": "/actors",
    #     "method": "PUT",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 1,
    #         "login": "1_davidwright",
    #         "avatar_url": "https://avatars.com/1/davidwright"
    #     },
    #     "response": {},
    #     "response_code": 400
    # }

    params = { "id": 1, "login": "1_davidwright", "avatar_url": "https://avatars.com/1/davidwright" }
    put '/actors', params
    expect(response.status).to eq 400
  end

  it 'updateAvatarUrlOfNonExistingActor' do
    # {
    #     "comment": "Update avatar URL of actor id 8",
    #     "test_comment": "It tests updating avatar url of non-existing actor",
    #     "test_name": "updateAvatarUrlOfNonExistingActor",
    #     "test_class": "ActorsControllerSpec",
    #     "test_priority": 2,
    #     "endpoint": "/actors",
    #     "method": "PUT",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 8,
    #         "login": 8,
    #         "avatar_url": "https://avatars.com/8"
    #     },
    #     "response": {},
    #     "response_code": 400
    # }

    params = { "id": 8, "login": 8, "avatar_url": "https://avatars.com/8" }
    put '/actors', params
    expect(response.status).to eq 400
  end

  it 'findAllActors' do
    # {
    #     "comment": "Find all the actors",
    #     "test_comment": "It tests finding all the actors",
    #     "test_name": "findAllActors",
    #     "test_class": "ActorsControllerSpec",
    #     "test_priority": 2,
    #     "endpoint": "/actors",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": [
    #         {
    #             "id": 1,
    #             "login": "davidwright",
    #             "avatar_url": "https://avatars.com/1/davidwright"
    #         },
    #         {
    #             "id": 5,
    #             "login": "christine20",
    #             "avatar_url": "https://avatars.com/christine20"
    #         },
    #         {
    #             "id": 6,
    #             "login": "carolpatterson",
    #             "avatar_url": "https://avatars.com/carolpatterson"
    #         },
    #         {
    #             "id": 4,
    #             "login": "kbass",
    #             "avatar_url": "https://avatars.com/kbass"
    #         },
    #         {
    #             "id": 2,
    #             "login": "nicole48",
    #             "avatar_url": "https://avatars.com/2/nicole48"
    #         },
    #         {
    #             "id": 3,
    #             "login": "jade33",
    #             "avatar_url": "https://avatars.com/3/jade33"
    #         }
    #     ],
    #     "response_code": 200
    # }

    resp = [ { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/1/davidwright" }, { "id": 5, "login": "christine20", "avatar_url": "https://avatars.com/christine20" }, { "id": 6, "login": "carolpatterson", "avatar_url": "https://avatars.com/carolpatterson" }, { "id": 4, "login": "kbass", "avatar_url": "https://avatars.com/kbass" }, { "id": 2, "login": "nicole48", "avatar_url": "https://avatars.com/2/nicole48" }, { "id": 3, "login": "jade33", "avatar_url": "https://avatars.com/3/jade33" } ]
    get '/actors'
    expect(response.status).to eq 200
    resp.each do |i|
      i.deep_stringify_keys!
    end
    expect(JSON.parse(response.body)).to eq resp
  end
end