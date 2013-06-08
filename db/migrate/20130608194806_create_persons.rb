class CreatePersons < ActiveRecord::Migration
  def up
    create_table :persons do |t|
      t.string :name
    end
  end

  def down
    drop_table :persons
  end
end
