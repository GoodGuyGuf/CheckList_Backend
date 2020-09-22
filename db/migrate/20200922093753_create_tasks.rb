class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.boolean :checked, default: false, null: false
      t.string :procedure
      t.belongs_to :check_list
      t.timestamps
    end
  end
end
