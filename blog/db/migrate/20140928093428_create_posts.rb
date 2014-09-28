class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :tags
      t.datetime :posted_at
      t.boolean :moderated
      t.references :contributor, index: true

      t.timestamps
    end
  end
end
