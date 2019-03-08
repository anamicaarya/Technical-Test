class CreateDatasets < ActiveRecord::Migration[5.1]
  def change
    create_table :datasets do |t|
      t.string :title
      t.string :file_path

      t.timestamps
    end
  end
end
