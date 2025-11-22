class CreateUrls < ActiveRecord::Migration[8.0]
  def change
    create_table :urls do |t|
      t.string :short_url, null: false
      t.string :original_url, null: false
      t.integer :ttl

      t.timestamps
    end
  end
end
