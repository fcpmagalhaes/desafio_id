class AddTagsToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :tags, :integer, array:true, default: []
  end
end
