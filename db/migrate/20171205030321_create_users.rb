class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :username, null: false
      t.datetime :registered_at, null: false
      t.integer :posts_count, null: false, default: 0

      t.timestamps
    end
  end
end
