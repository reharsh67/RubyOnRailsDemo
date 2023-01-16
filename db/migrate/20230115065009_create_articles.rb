class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :desc
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
