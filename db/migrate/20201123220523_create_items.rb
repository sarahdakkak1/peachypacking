class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :comment
      t.datetime :packing_date
      t.references :project, null: false, foreign_key: true
      t.references :box, null: false, foreign_key: true

      t.timestamps
    end
  end
end
