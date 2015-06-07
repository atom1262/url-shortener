class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :original_url, null: false
      t.string :token

      t.timestamps
    end
  end
end
