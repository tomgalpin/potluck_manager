class CreatePotlucks < ActiveRecord::Migration
  def up
    create_table :potlucks do |t|
      t.string :name
      t.boolean :status, :default => true
    end
  end

  def down
    drop_table :potlucks
  end
end