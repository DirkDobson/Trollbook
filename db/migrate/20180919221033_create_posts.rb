class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :content
      t.string :author
      t.boolean :featured

      t.timestamps
    end
  end
end
