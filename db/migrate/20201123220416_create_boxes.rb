class CreateBoxes < ActiveRecord::Migration[6.0]
  def change
    create_table :boxes do |t|
      t.string :name
      t.text :comment
      t.string :qr_code
      t.string :size
      t.datetime :packing_date
      t.boolean :full
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
