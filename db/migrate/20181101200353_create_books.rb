class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.date :release_date
      t.float :base_price
      t.belongs_to :format, index: true

      t.timestamps
    end
  end
end
