class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :id
      t.integer :tweet_id
      t.string :username
      t.string :content
      t.timestamps
    end
  end
end
