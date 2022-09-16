class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :teaser
      t.text :body
      t.boolean :published, default: false
      t.date :published_at
      t.string :video_url
      t.references :user, null: false, foreign_key: true
      t.string :slug
      t.string :image_url

      t.timestamps
    end
  end
end
