class CreateTrainers < ActiveRecord::Migration[8.1]
  def change
    create_table :trainers do |t|
      t.integer :trainer_id
      t.string :name
      t.decimal :money
      t.string :url_image

      t.timestamps
    end
  end
end
