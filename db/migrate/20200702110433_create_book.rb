class CreateBook < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author_name
      t.string :isbn
      t.datetime :published_at

      t.timestamps
    end
  end
end
