class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :published_at
      t.text :content

      t.timestamps
    end
  end
end
