require 'spec_helper'
require 'rails_helper'
require 'rspec/rails'
RSpec.describe "EventsControllerSpec", :type => :request do

  it 'createEvent' do

    # {
    #     "comment": "Create event with id 1",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 1,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 1,
    #             "login": "davidwright",
    #             "avatar_url": "https://avatars.com/davidwright"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-28 06:12:46"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 1, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-28 06:12:46" }

    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 2",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 2,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 1,
    #             "login": "davidwright",
    #             "avatar_url": "https://avatars.com/davidwright"
    #         },
    #         "repo": {
    #             "id": 2,
    #             "name": "allen/facere",
    #             "url": "https://github.com/allen/facere"
    #         },
    #         "created_at": "2018-12-28 06:24:37"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 2, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-28 06:24:37" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 3",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 3,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 3,
    #             "login": "jade33",
    #             "avatar_url": "https://avatars.com/jade33"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-28 22:31:59"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 3, "type": "PushEvent", "actor": { "id": 3, "login": "jade33", "avatar_url": "https://avatars.com/jade33" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-28 22:31:59" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 4",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 4,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 5,
    #             "login": "christine20",
    #             "avatar_url": "https://avatars.com/christine20"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-29 03:38:10"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 4, "type": "PushEvent", "actor": { "id": 5, "login": "christine20", "avatar_url": "https://avatars.com/christine20" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 03:38:10" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 5",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 5,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 6,
    #             "login": "carolpatterson",
    #             "avatar_url": "https://avatars.com/carolpatterson"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-29 12:52:48"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 5, "type": "PushEvent", "actor": { "id": 6, "login": "carolpatterson", "avatar_url": "https://avatars.com/carolpatterson" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 12:52:48" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 6",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 6,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 1,
    #             "login": "davidwright",
    #             "avatar_url": "https://avatars.com/davidwright"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-29 13:51:54"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 6, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 13:51:54" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 7",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 7,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 6,
    #             "login": "carolpatterson",
    #             "avatar_url": "https://avatars.com/carolpatterson"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-29 15:34:33"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 7, "type": "PushEvent", "actor": { "id": 6, "login": "carolpatterson", "avatar_url": "https://avatars.com/carolpatterson" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 15:34:33" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 8",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 8,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 1,
    #             "login": "davidwright",
    #             "avatar_url": "https://avatars.com/davidwright"
    #         },
    #         "repo": {
    #             "id": 2,
    #             "name": "allen/facere",
    #             "url": "https://github.com/allen/facere"
    #         },
    #         "created_at": "2018-12-29 17:59:41"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 8, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-29 17:59:41" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 9",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 9,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 6,
    #             "login": "carolpatterson",
    #             "avatar_url": "https://avatars.com/carolpatterson"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-29 19:53:25"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 9, "type": "PushEvent", "actor": { "id": 6, "login": "carolpatterson", "avatar_url": "https://avatars.com/carolpatterson" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 19:53:25" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 10",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 10,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 2,
    #             "login": "nicole48",
    #             "avatar_url": "https://avatars.com/nicole48"
    #         },
    #         "repo": {
    #             "id": 2,
    #             "name": "allen/facere",
    #             "url": "https://github.com/allen/facere"
    #         },
    #         "created_at": "2018-12-29 20:43:02"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 10, "type": "PushEvent", "actor": { "id": 2, "login": "nicole48", "avatar_url": "https://avatars.com/nicole48" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-29 20:43:02" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 11",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 11,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 5,
    #             "login": "christine20",
    #             "avatar_url": "https://avatars.com/christine20"
    #         },
    #         "repo": {
    #             "id": 2,
    #             "name": "allen/facere",
    #             "url": "https://github.com/allen/facere"
    #         },
    #         "created_at": "2018-12-30 02:17:08"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 11, "type": "PushEvent", "actor": { "id": 5, "login": "christine20", "avatar_url": "https://avatars.com/christine20" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-30 02:17:08" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 12",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 12,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 3,
    #             "login": "jade33",
    #             "avatar_url": "https://avatars.com/jade33"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-30 18:59:20"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 12, "type": "PushEvent", "actor": { "id": 3, "login": "jade33", "avatar_url": "https://avatars.com/jade33" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-30 18:59:20" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 13",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 13,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 1,
    #             "login": "davidwright",
    #             "avatar_url": "https://avatars.com/davidwright"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-30 19:54:40"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 13, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-30 19:54:40" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 14",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 14,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 2,
    #             "login": "nicole48",
    #             "avatar_url": "https://avatars.com/nicole48"
    #         },
    #         "repo": {
    #             "id": 2,
    #             "name": "allen/facere",
    #             "url": "https://github.com/allen/facere"
    #         },
    #         "created_at": "2018-12-31 20:21:24"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 14, "type": "PushEvent", "actor": { "id": 2, "login": "nicole48", "avatar_url": "https://avatars.com/nicole48" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-31 20:21:24" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 15",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 15,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 3,
    #             "login": "jade33",
    #             "avatar_url": "https://avatars.com/jade33"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2019-01-01 03:46:48"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 15, "type": "PushEvent", "actor": { "id": 3, "login": "jade33", "avatar_url": "https://avatars.com/jade33" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2019-01-01 03:46:48" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 16",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 16,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 2,
    #             "login": "nicole48",
    #             "avatar_url": "https://avatars.com/nicole48"
    #         },
    #         "repo": {
    #             "id": 2,
    #             "name": "allen/facere",
    #             "url": "https://github.com/allen/facere"
    #         },
    #         "created_at": "2019-01-01 15:24:13"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 16, "type": "PushEvent", "actor": { "id": 2, "login": "nicole48", "avatar_url": "https://avatars.com/nicole48" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2019-01-01 15:24:13" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 17",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 17,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 6,
    #             "login": "carolpatterson",
    #             "avatar_url": "https://avatars.com/carolpatterson"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2019-01-01 15:24:13"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 17, "type": "PushEvent", "actor": { "id": 6, "login": "carolpatterson", "avatar_url": "https://avatars.com/carolpatterson" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2019-01-01 15:24:13" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 18",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 18,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 4,
    #             "login": "kbass",
    #             "avatar_url": "https://avatars.com/kbass"
    #         },
    #         "repo": {
    #             "id": 3,
    #             "name": "cochran/perspiciatis",
    #             "url": "https://github.com/cochran/perspiciatis"
    #         },
    #         "created_at": "2019-01-01 16:57:48"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 18, "type": "PushEvent", "actor": { "id": 4, "login": "kbass", "avatar_url": "https://avatars.com/kbass" }, "repo": { "id": 3, "name": "cochran/perspiciatis", "url": "https://github.com/cochran/perspiciatis" }, "created_at": "2019-01-01 16:57:48" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 19",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 19,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 5,
    #             "login": "christine20",
    #             "avatar_url": "https://avatars.com/christine20"
    #         },
    #         "repo": {
    #             "id": 3,
    #             "name": "cochran/perspiciatis",
    #             "url": "https://github.com/cochran/perspiciatis"
    #         },
    #         "created_at": "2019-01-01 22:35:59"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 19, "type": "PushEvent", "actor": { "id": 5, "login": "christine20", "avatar_url": "https://avatars.com/christine20" }, "repo": { "id": 3, "name": "cochran/perspiciatis", "url": "https://github.com/cochran/perspiciatis" }, "created_at": "2019-01-01 22:35:59" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 20",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 20,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 4,
    #             "login": "kbass",
    #             "avatar_url": "https://avatars.com/kbass"
    #         },
    #         "repo": {
    #             "id": 3,
    #             "name": "cochran/perspiciatis",
    #             "url": "https://github.com/cochran/perspiciatis"
    #         },
    #         "created_at": "2019-01-02 16:43:12"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 20, "type": "PushEvent", "actor": { "id": 4, "login": "kbass", "avatar_url": "https://avatars.com/kbass" }, "repo": { "id": 3, "name": "cochran/perspiciatis", "url": "https://github.com/cochran/perspiciatis" }, "created_at": "2019-01-02 16:43:12" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 21",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 21,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 4,
    #             "login": "kbass",
    #             "avatar_url": "https://avatars.com/kbass"
    #         },
    #         "repo": {
    #             "id": 3,
    #             "name": "cochran/perspiciatis",
    #             "url": "https://github.com/cochran/perspiciatis"
    #         },
    #         "created_at": "2019-01-03 13:37:04"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 21, "type": "PushEvent", "actor": { "id": 4, "login": "kbass", "avatar_url": "https://avatars.com/kbass" }, "repo": { "id": 3, "name": "cochran/perspiciatis", "url": "https://github.com/cochran/perspiciatis" }, "created_at": "2019-01-03 13:37:04" }
    post '/events', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create event with id 22",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEvent",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 22,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 5,
    #             "login": "christine20",
    #             "avatar_url": "https://avatars.com/christine20"
    #         },
    #         "repo": {
    #             "id": 3,
    #             "name": "cochran/perspiciatis",
    #             "url": "https://github.com/cochran/perspiciatis"
    #         },
    #         "created_at": "2019-01-03 13:37:04"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 22, "type": "PushEvent", "actor": { "id": 5, "login": "christine20", "avatar_url": "https://avatars.com/christine20" }, "repo": { "id": 3, "name": "cochran/perspiciatis", "url": "https://github.com/cochran/perspiciatis" }, "created_at": "2019-01-03 13:37:04" }
    post '/events', params, format: :json
    expect(response.status).to eq 201
  end

  it 'createEventWithExistingId' do

    # {
    #     "comment": "Create event with existing id 1",
    #     "test_comment": "It tests creating an event",
    #     "test_name": "createEventWithExistingId",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 1,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 1,
    #             "login": "davidwright",
    #             "avatar_url": "https://avatars.com/davidwright"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-28 06:12:46"
    #     },
    #     "response": "",
    #     "response_code": 400
    # }

    params = { "id": 1, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-28 06:12:46" }
    post '/events', params
    expect(response.status).to eq 400
  end

  it 'findEventById' do

    # {
    #     "comment": "Find event by id 1",
    #     "test_comment": "It tests finding an event",
    #     "test_name": "findEventById",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events/1",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": {
    #         "id": 1,
    #         "type": "PushEvent",
    #         "actor": {
    #             "id": 1,
    #             "login": "davidwright",
    #             "avatar_url": "https://avatars.com/davidwright"
    #         },
    #         "repo": {
    #             "id": 1,
    #             "name": "smith/neque",
    #             "url": "https://github.com/smith/neque"
    #         },
    #         "created_at": "2018-12-28 06:12:46"
    #     },
    #     "response_code": 200
    # }

    resp = { "id": 1, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-28 06:12:46" }
    get '/events/1'
    expect(response.status).to eq 200
    expect(JSON.parse(response.body)).to eq resp.deep_stringify_keys
  end

  it 'findEventByNonExistingId' do

    # {
    #     "comment": "Find event by non-existing id 23",
    #     "test_comment": "It tests finding an event",
    #     "test_name": "findEventByNonExistingId",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events/23",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }
    resp = {}
    get '/events/23'
    expect(response.status).to eq 404
    expect(JSON.parse(response.body)).to eq resp.deep_stringify_keys
  end

  it 'findAllEventsByActorId' do

    # {
    #     "comment": "Find all the events by actor id 1",
    #     "test_comment": "It tests finding an event by actor id",
    #     "test_name": "findAllEventsByActorId",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events/actors/1",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": [
    #         {
    #             "id": 1,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 1,
    #                 "login": "davidwright",
    #                 "avatar_url": "https://avatars.com/davidwright"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-28 06:12:46"
    #         },
    #         {
    #             "id": 2,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 1,
    #                 "login": "davidwright",
    #                 "avatar_url": "https://avatars.com/davidwright"
    #             },
    #             "repo": {
    #                 "id": 2,
    #                 "name": "allen/facere",
    #                 "url": "https://github.com/allen/facere"
    #             },
    #             "created_at": "2018-12-28 06:24:37"
    #         },
    #         {
    #             "id": 6,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 1,
    #                 "login": "davidwright",
    #                 "avatar_url": "https://avatars.com/davidwright"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-29 13:51:54"
    #         },
    #         {
    #             "id": 8,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 1,
    #                 "login": "davidwright",
    #                 "avatar_url": "https://avatars.com/davidwright"
    #             },
    #             "repo": {
    #                 "id": 2,
    #                 "name": "allen/facere",
    #                 "url": "https://github.com/allen/facere"
    #             },
    #             "created_at": "2018-12-29 17:59:41"
    #         },
    #         {
    #             "id": 13,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 1,
    #                 "login": "davidwright",
    #                 "avatar_url": "https://avatars.com/davidwright"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-30 19:54:40"
    #         }
    #     ],
    #     "response_code": 200
    # }
    resp = [ { "id": 1, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-28 06:12:46" }, { "id": 2, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-28 06:24:37" }, { "id": 6, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 13:51:54" }, { "id": 8, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-29 17:59:41" }, { "id": 13, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-30 19:54:40" } ]
    get '/events/actors/1'
    resp.each do |i|
      i.deep_stringify_keys!
    end
    expect(response.status).to eq 200
    expect(JSON.parse(response.body)).to eq resp
  end

  it 'findAllEventsByNonExistingActorId' do

   # {
   #      "comment": "Find all the events by actor id 7",
   #      "test_comment": "It tests finding an event by non-existing actor id",
   #      "test_name": "findAllEventsByNonExistingActorId",
   #      "test_class": "EventsControllerSpec",
   #      "test_priority": 1,
   #      "endpoint": "/events/actors/7",
   #      "method": "GET",
   #      "headers": {},
   #      "body": {},
   #      "response": "",
   #      "response_code": 404
   #  }

    resp = {}
    get '/events/actors/7'
    expect(response.status).to eq 404
    expect(JSON.parse(response.body)).to eq resp.deep_stringify_keys
  end

  it 'findAllEvents' do

    # {
    #     "comment": "Find all the events",
    #     "test_comment": "It tests finding all the events",
    #     "test_name": "findAllEvents",
    #     "test_class": "EventsControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/events",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": [
    #         {
    #             "id": 1,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 1,
    #                 "login": "davidwright",
    #                 "avatar_url": "https://avatars.com/davidwright"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-28 06:12:46"
    #         },
    #         {
    #             "id": 2,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 1,
    #                 "login": "davidwright",
    #                 "avatar_url": "https://avatars.com/davidwright"
    #             },
    #             "repo": {
    #                 "id": 2,
    #                 "name": "allen/facere",
    #                 "url": "https://github.com/allen/facere"
    #             },
    #             "created_at": "2018-12-28 06:24:37"
    #         },
    #         {
    #             "id": 3,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 3,
    #                 "login": "jade33",
    #                 "avatar_url": "https://avatars.com/jade33"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-28 22:31:59"
    #         },
    #         {
    #             "id": 4,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 5,
    #                 "login": "christine20",
    #                 "avatar_url": "https://avatars.com/christine20"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-29 03:38:10"
    #         },
    #         {
    #             "id": 5,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 6,
    #                 "login": "carolpatterson",
    #                 "avatar_url": "https://avatars.com/carolpatterson"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-29 12:52:48"
    #         },
    #         {
    #             "id": 6,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 1,
    #                 "login": "davidwright",
    #                 "avatar_url": "https://avatars.com/davidwright"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-29 13:51:54"
    #         },
    #         {
    #             "id": 7,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 6,
    #                 "login": "carolpatterson",
    #                 "avatar_url": "https://avatars.com/carolpatterson"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-29 15:34:33"
    #         },
    #         {
    #             "id": 8,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 1,
    #                 "login": "davidwright",
    #                 "avatar_url": "https://avatars.com/davidwright"
    #             },
    #             "repo": {
    #                 "id": 2,
    #                 "name": "allen/facere",
    #                 "url": "https://github.com/allen/facere"
    #             },
    #             "created_at": "2018-12-29 17:59:41"
    #         },
    #         {
    #             "id": 9,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 6,
    #                 "login": "carolpatterson",
    #                 "avatar_url": "https://avatars.com/carolpatterson"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-29 19:53:25"
    #         },
    #         {
    #             "id": 10,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 2,
    #                 "login": "nicole48",
    #                 "avatar_url": "https://avatars.com/nicole48"
    #             },
    #             "repo": {
    #                 "id": 2,
    #                 "name": "allen/facere",
    #                 "url": "https://github.com/allen/facere"
    #             },
    #             "created_at": "2018-12-29 20:43:02"
    #         },
    #         {
    #             "id": 11,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 5,
    #                 "login": "christine20",
    #                 "avatar_url": "https://avatars.com/christine20"
    #             },
    #             "repo": {
    #                 "id": 2,
    #                 "name": "allen/facere",
    #                 "url": "https://github.com/allen/facere"
    #             },
    #             "created_at": "2018-12-30 02:17:08"
    #         },
    #         {
    #             "id": 12,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 3,
    #                 "login": "jade33",
    #                 "avatar_url": "https://avatars.com/jade33"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-30 18:59:20"
    #         },
    #         {
    #             "id": 13,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 1,
    #                 "login": "davidwright",
    #                 "avatar_url": "https://avatars.com/davidwright"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2018-12-30 19:54:40"
    #         },
    #         {
    #             "id": 14,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 2,
    #                 "login": "nicole48",
    #                 "avatar_url": "https://avatars.com/nicole48"
    #             },
    #             "repo": {
    #                 "id": 2,
    #                 "name": "allen/facere",
    #                 "url": "https://github.com/allen/facere"
    #             },
    #             "created_at": "2018-12-31 20:21:24"
    #         },
    #         {
    #             "id": 15,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 3,
    #                 "login": "jade33",
    #                 "avatar_url": "https://avatars.com/jade33"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2019-01-01 03:46:48"
    #         },
    #         {
    #             "id": 16,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 2,
    #                 "login": "nicole48",
    #                 "avatar_url": "https://avatars.com/nicole48"
    #             },
    #             "repo": {
    #                 "id": 2,
    #                 "name": "allen/facere",
    #                 "url": "https://github.com/allen/facere"
    #             },
    #             "created_at": "2019-01-01 15:24:13"
    #         },
    #         {
    #             "id": 17,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 6,
    #                 "login": "carolpatterson",
    #                 "avatar_url": "https://avatars.com/carolpatterson"
    #             },
    #             "repo": {
    #                 "id": 1,
    #                 "name": "smith/neque",
    #                 "url": "https://github.com/smith/neque"
    #             },
    #             "created_at": "2019-01-01 15:24:13"
    #         },
    #         {
    #             "id": 18,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 4,
    #                 "login": "kbass",
    #                 "avatar_url": "https://avatars.com/kbass"
    #             },
    #             "repo": {
    #                 "id": 3,
    #                 "name": "cochran/perspiciatis",
    #                 "url": "https://github.com/cochran/perspiciatis"
    #             },
    #             "created_at": "2019-01-01 16:57:48"
    #         },
    #         {
    #             "id": 19,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 5,
    #                 "login": "christine20",
    #                 "avatar_url": "https://avatars.com/christine20"
    #             },
    #             "repo": {
    #                 "id": 3,
    #                 "name": "cochran/perspiciatis",
    #                 "url": "https://github.com/cochran/perspiciatis"
    #             },
    #             "created_at": "2019-01-01 22:35:59"
    #         },
    #         {
    #             "id": 20,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 4,
    #                 "login": "kbass",
    #                 "avatar_url": "https://avatars.com/kbass"
    #             },
    #             "repo": {
    #                 "id": 3,
    #                 "name": "cochran/perspiciatis",
    #                 "url": "https://github.com/cochran/perspiciatis"
    #             },
    #             "created_at": "2019-01-02 16:43:12"
    #         },
    #         {
    #             "id": 21,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 4,
    #                 "login": "kbass",
    #                 "avatar_url": "https://avatars.com/kbass"
    #             },
    #             "repo": {
    #                 "id": 3,
    #                 "name": "cochran/perspiciatis",
    #                 "url": "https://github.com/cochran/perspiciatis"
    #             },
    #             "created_at": "2019-01-03 13:37:04"
    #         },
    #         {
    #             "id": 22,
    #             "type": "PushEvent",
    #             "actor": {
    #                 "id": 5,
    #                 "login": "christine20",
    #                 "avatar_url": "https://avatars.com/christine20"
    #             },
    #             "repo": {
    #                 "id": 3,
    #                 "name": "cochran/perspiciatis",
    #                 "url": "https://github.com/cochran/perspiciatis"
    #             },
    #             "created_at": "2019-01-03 13:37:04"
    #         }
    #     ],
    #     "response_code": 200
    # }

    resp = [ { "id": 1, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-28 06:12:46" }, { "id": 2, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-28 06:24:37" }, { "id": 3, "type": "PushEvent", "actor": { "id": 3, "login": "jade33", "avatar_url": "https://avatars.com/jade33" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-28 22:31:59" }, { "id": 4, "type": "PushEvent", "actor": { "id": 5, "login": "christine20", "avatar_url": "https://avatars.com/christine20" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 03:38:10" }, { "id": 5, "type": "PushEvent", "actor": { "id": 6, "login": "carolpatterson", "avatar_url": "https://avatars.com/carolpatterson" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 12:52:48" }, { "id": 6, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 13:51:54" }, { "id": 7, "type": "PushEvent", "actor": { "id": 6, "login": "carolpatterson", "avatar_url": "https://avatars.com/carolpatterson" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 15:34:33" }, { "id": 8, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-29 17:59:41" }, { "id": 9, "type": "PushEvent", "actor": { "id": 6, "login": "carolpatterson", "avatar_url": "https://avatars.com/carolpatterson" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-29 19:53:25" }, { "id": 10, "type": "PushEvent", "actor": { "id": 2, "login": "nicole48", "avatar_url": "https://avatars.com/nicole48" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-29 20:43:02" }, { "id": 11, "type": "PushEvent", "actor": { "id": 5, "login": "christine20", "avatar_url": "https://avatars.com/christine20" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-30 02:17:08" }, { "id": 12, "type": "PushEvent", "actor": { "id": 3, "login": "jade33", "avatar_url": "https://avatars.com/jade33" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-30 18:59:20" }, { "id": 13, "type": "PushEvent", "actor": { "id": 1, "login": "davidwright", "avatar_url": "https://avatars.com/davidwright" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2018-12-30 19:54:40" }, { "id": 14, "type": "PushEvent", "actor": { "id": 2, "login": "nicole48", "avatar_url": "https://avatars.com/nicole48" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2018-12-31 20:21:24" }, { "id": 15, "type": "PushEvent", "actor": { "id": 3, "login": "jade33", "avatar_url": "https://avatars.com/jade33" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2019-01-01 03:46:48" }, { "id": 16, "type": "PushEvent", "actor": { "id": 2, "login": "nicole48", "avatar_url": "https://avatars.com/nicole48" }, "repo": { "id": 2, "name": "allen/facere", "url": "https://github.com/allen/facere" }, "created_at": "2019-01-01 15:24:13" }, { "id": 17, "type": "PushEvent", "actor": { "id": 6, "login": "carolpatterson", "avatar_url": "https://avatars.com/carolpatterson" }, "repo": { "id": 1, "name": "smith/neque", "url": "https://github.com/smith/neque" }, "created_at": "2019-01-01 15:24:13" }, { "id": 18, "type": "PushEvent", "actor": { "id": 4, "login": "kbass", "avatar_url": "https://avatars.com/kbass" }, "repo": { "id": 3, "name": "cochran/perspiciatis", "url": "https://github.com/cochran/perspiciatis" }, "created_at": "2019-01-01 16:57:48" }, { "id": 19, "type": "PushEvent", "actor": { "id": 5, "login": "christine20", "avatar_url": "https://avatars.com/christine20" }, "repo": { "id": 3, "name": "cochran/perspiciatis", "url": "https://github.com/cochran/perspiciatis" }, "created_at": "2019-01-01 22:35:59" }, { "id": 20, "type": "PushEvent", "actor": { "id": 4, "login": "kbass", "avatar_url": "https://avatars.com/kbass" }, "repo": { "id": 3, "name": "cochran/perspiciatis", "url": "https://github.com/cochran/perspiciatis" }, "created_at": "2019-01-02 16:43:12" }, { "id": 21, "type": "PushEvent", "actor": { "id": 4, "login": "kbass", "avatar_url": "https://avatars.com/kbass" }, "repo": { "id": 3, "name": "cochran/perspiciatis", "url": "https://github.com/cochran/perspiciatis" }, "created_at": "2019-01-03 13:37:04" }, { "id": 22, "type": "PushEvent", "actor": { "id": 5, "login": "christine20", "avatar_url": "https://avatars.com/christine20" }, "repo": { "id": 3, "name": "cochran/perspiciatis", "url": "https://github.com/cochran/perspiciatis" }, "created_at": "2019-01-03 13:37:04" } ]
    get '/events'
    expect(response.status).to eq 200
    resp.each do |i|
      i.deep_stringify_keys!
    end
    expect(JSON.parse(response.body)).to eq resp
  end
end
