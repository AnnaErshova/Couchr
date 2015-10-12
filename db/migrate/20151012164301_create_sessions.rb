class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.datetime :start_time

      t.timestamps null: false
    end
  end
end
