require 'spec_helper'
require 'rspec/rails'
describe "NoResourcesEventsControllerSpec", :type => :request do

  it 'findAllEvents' do
    # {
    #     "comment": "Find all the events",
    #     "test_comment": "It tests finding all the events",
    #     "test_name": "findAllEvents",
    #     "test_class": "NoResourcesEventsControllerSpec",
    #     "test_priority": 4,
    #     "endpoint": "/events",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": [],
    #     "response_code": 200
    # }
    get '/events'
    expect(response.status).to eq 200
    expect(response.body).to eq "[]"
  end

  it 'findAllEventsByNonExistingActorId' do
    # {
    #     "comment": "Find all the events by non-existing actor id 1",
    #     "test_comment": "It tests finding all the events by actor id",
    #     "test_name": "findAllEventsByNonExistingActorId",
    #     "test_class": "NoResourcesEventsControllerSpec",
    #     "test_priority": 4,
    #     "endpoint": "/events/actors/1",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }
    get '/events/actors/1'
    expect(response.status).to eq 404
  end

  it 'findEventByNonExistingId' do
    # {
    #     "comment": "Find event by non-existing id 1",
    #     "test_comment": "It tests finding an event",
    #     "test_name": "findEventByNonExistingId",
    #     "test_class": "NoResourcesEventsControllerSpec",
    #     "test_priority": 4,
    #     "endpoint": "/events/1",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }
    get '/events/1'
    expect(response.status).to eq 404
  end
end
