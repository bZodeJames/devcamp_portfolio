class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :body
      t.text :main_image
      t.string :thumb_text

      t.timestamps
    end
  end
end
