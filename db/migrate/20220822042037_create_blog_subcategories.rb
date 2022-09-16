class CreateBlogSubcategories < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_subcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
