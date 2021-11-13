class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.float :price_per_day
      t.bigint :user_id

      t.timestamps
    end
  end
end
