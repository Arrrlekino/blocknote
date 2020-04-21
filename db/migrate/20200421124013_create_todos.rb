class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :text
      t.datetime :datedo

      t.timestamps
    end
  end
end
