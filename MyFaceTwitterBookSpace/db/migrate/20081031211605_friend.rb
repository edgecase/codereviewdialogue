class Friend < ActiveRecord::Migration
  def self.up
    create_table :friends do |t|
      t.string :first_name, :last_name
      t.integer :user_id
    end
  end

  def self.down
    drop_table :friends
  end
end
