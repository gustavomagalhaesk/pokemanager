class CreatePokemons < ActiveRecord::Migration[8.1]
  def change
    create_table :pokemons do |t|
      t.references :trainer, null: false, foreign_key: true
      t.references :pokedex, null: false, foreign_key: true
      t.integer :level
      t.boolean :on_team

      t.timestamps
    end
  end
end
