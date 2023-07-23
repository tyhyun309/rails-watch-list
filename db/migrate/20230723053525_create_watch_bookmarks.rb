class CreateWatchBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :watch_bookmarks do |t|
      t.string :comment
      t.references :watch_movie, null: false, foreign_key: true
      t.references :watch_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
