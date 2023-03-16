class CreateCustomCards < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_cards do |t|
      t.string :card_name
      t.string :card_image
      t.text :card_text

      t.timestamps
    end
  end
end
