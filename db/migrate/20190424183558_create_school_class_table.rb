class CreateSchoolClassTable < ActiveRecord::Migration[5.0]
  def change
    create_table :school_class_tables do |t|
      t.string :title
      t.integer :room_number
    end
  end
end
