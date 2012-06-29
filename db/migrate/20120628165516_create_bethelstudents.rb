class CreateBethelstudents < ActiveRecord::Migration
  def change
    create_table :bethelstudents do |t|
      t.string :name
      t.integer :year
      t.string :sex
      t.string :country
      t.integer :tuition_paid
      t.integer :tuition_due

      t.timestamps
    end
  end
end
