class CreateItems < ActiveRecord::Migration
  def up
    create_table :items do |t|
      t.string :name
      t.integer :person_id
      t.integer :potluck_id
    end
  end

  def down
    drop_table :items
  end
end