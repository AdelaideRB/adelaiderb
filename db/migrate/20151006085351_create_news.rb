class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :body
      t.string :author
      t.datetime :published_at
      t.integer :status

      t.timestamps null: false
    end
  end
end
