class CreateTasks < ActiveRecord::Migration[6.1]
  def change
     create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :completed, default: false
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
