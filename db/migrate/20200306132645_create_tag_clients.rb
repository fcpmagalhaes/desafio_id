class CreateTagClients < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_clients do |t|
      t.references :tag, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
