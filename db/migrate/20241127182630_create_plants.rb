class CreatePlants < ActiveRecord::Migration[7.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :image_url
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
