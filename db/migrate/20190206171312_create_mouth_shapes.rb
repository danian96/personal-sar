class CreateMouthShapes < ActiveRecord::Migration[5.2]
  def change
    create_table :mouth_shapes do |t|
      t.string :name

      t.timestamps
    end
  end
end
