class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :c_name
      t.integer :price
      t.text :description
      t.string :prof
      t.integer :units

      t.timestamps
    end
  end
end
