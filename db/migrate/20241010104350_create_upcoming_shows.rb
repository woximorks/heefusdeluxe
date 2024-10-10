class CreateUpcomingShows < ActiveRecord::Migration[7.1]
  def change
    create_table :upcoming_shows do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
