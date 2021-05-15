require 'spec_helper'
require 'rspec/rails'
describe "ResourcesControllerSpec", :type => :request do

  it 'eraseAllRecords' do
    # {
    #     "comment": "Erase all the event records including actor and repository records",
    #     "test_comment": "It tests erasing all the records",
    #     "test_name": "eraseAllRecords",
    #     "test_class": "ResourcesControllerTest",
    #     "test_priority": 3,
    #     "endpoint": "/erase",
    #     "method": "DELETE",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 200
    # }

    delete '/erase'
    expect(response.status).to eq 200
  end
end
