class AddBelongsToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :actor, index: true, foreign_key: true
    add_reference :events, :repository, index: true, foreign_key: true
  end
end
