class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.boolean :selected, default: true
      t.string :data_type
      t.references :Dataset, foreign_key: true

      t.timestamps
    end
  end
end
