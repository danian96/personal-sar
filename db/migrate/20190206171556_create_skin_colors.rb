class CreateSkinColors < ActiveRecord::Migration[5.2]
  def change
    create_table :skin_colors do |t|
      t.string :name

      t.timestamps
    end
  end
end
