class CreateCheckLists < ActiveRecord::Migration[6.0]
  def change
    create_table :check_lists do |t|
      t.belongs_to :user
      t.string :name
      t.timestamps
    end
  end
end
