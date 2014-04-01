class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :number
      t.string :item
      t.string :url
      t.string :user
      t.string :thumbnail
      t.string :sales
      t.string :rating
      t.string :rating_decimal
      t.string :cost
      t.date :uploaded_on
      t.date :last_update
      t.string :tags
      t.string :category
      t.string :live_preview_url

      t.timestamps
    end
  end
end
