class Event < ActiveRecord::Base
  alias_attribute :type, :kind
  belongs_to :actor, dependent: :destroy, counter_cache: true
  belongs_to :repository, dependent: :destroy
end
