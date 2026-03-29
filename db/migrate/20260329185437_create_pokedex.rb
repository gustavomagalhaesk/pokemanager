class CreatePokedex < ActiveRecord::Migration[8.1]
  def change
    create_table :pokedex do |t|
      t.integer :pokedex_id
      t.string :name
      t.string :pk_type

      t.timestamps
    end
  end
end
