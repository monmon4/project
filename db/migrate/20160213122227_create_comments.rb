class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :slide, index: true, foreign_key: true
      t.references :pdf_file, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
