class CreateInfoCards < ActiveRecord::Migration[7.1]
  def change
    create_table :info_cards do |t|
      t.string :info_card_title
      t.text :info_card_description
      t.string :info_card_image
      t.string :info_card_url

      t.timestamps
    end
  end
end
