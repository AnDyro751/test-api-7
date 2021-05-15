class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.string :login
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
