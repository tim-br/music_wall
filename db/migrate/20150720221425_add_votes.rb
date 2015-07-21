class AddVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :track_id, :null => false, :references => [:tracks, :id]
      t.integer :user_id, :null => false, :references => [:users, :id]
    end
  end
end
