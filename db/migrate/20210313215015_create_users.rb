class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :id
      t.integer :user_id
      t.string :image
      t.string :username
      t.string :location
      t.string :bio
      t.string :create_date
      t.integer :followers
      t.integer :following
      t.timestamps
    end
  end
end
