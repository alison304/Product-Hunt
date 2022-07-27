class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.boolean :visible, default: true

      t.timestamps  #created at , updated at
    end
  end
end
