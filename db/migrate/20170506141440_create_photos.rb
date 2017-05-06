class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.binary :image
      t.string :title

      t.timestamps
    end
  end
end
