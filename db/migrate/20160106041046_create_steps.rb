class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.datetime :date_start
      t.text :description
      t.references :title, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
