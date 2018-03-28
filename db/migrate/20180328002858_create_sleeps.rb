class CreateSleeps < ActiveRecord::Migration[5.1]
  def change
    create_table :sleeps do |t|
      t.string :name
      t.decimal :price
      t.string :description

      t.timestamps
    end
  end
end
