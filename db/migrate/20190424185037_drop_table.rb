class DropTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :school_class_tables 
  end
end
