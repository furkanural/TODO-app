class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :done
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
