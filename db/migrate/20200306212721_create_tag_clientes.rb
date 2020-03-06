class CreateTagClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_clientes do |t|
      t.references :tag, foreign_key: true
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
