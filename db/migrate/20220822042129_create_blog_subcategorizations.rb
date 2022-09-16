class CreateBlogSubcategorizations < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_subcategorizations do |t|
      t.references :blog, null: false, foreign_key: true
      t.references :blog_subcategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
