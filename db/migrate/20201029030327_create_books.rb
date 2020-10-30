class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|

      t.timestamps
      t.string     :title,    null: false
      t.integer    :genre_id, null: false
      t.string     :autor,    null: false
      t.integer    :price,    null: false
      t.text       :text,     null: false
      t.references :user,     null: false, foreign_key: true
    end
  end
end
