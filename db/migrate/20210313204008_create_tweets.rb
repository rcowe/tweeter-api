class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.integer :id
      t.integer :user_id
      t.string :user
      t.text :content
      t.string :media_image
      t.integer :likes
      t.integer :comments
      t.integer :retweets
      t.timestamps
    end
  end
end
