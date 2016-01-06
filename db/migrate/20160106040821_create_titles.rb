class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :classification
      t.text :description
      t.string :owner
      t.decimal :total_area, precision: 16, scale: 2
      t.string :acquisition
      t.string :status
      t.datetime :date_issued
      t.string :tax_dec_no
      t.text :remarks
      t.references :university, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
