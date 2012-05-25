class CreateInitialSchema < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.timestamps
    end
    create_table :updates do |t|
      t.integer :item_id, :null => false
      #t.string :type, :null => false
      t.string :name, :null => false
      t.text :text
      
      t.timestamps
    end

  end
end
