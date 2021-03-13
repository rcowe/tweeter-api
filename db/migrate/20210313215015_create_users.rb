class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :image
      t.string :name
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
