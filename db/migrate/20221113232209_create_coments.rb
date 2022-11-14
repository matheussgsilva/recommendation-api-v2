class CreateComents < ActiveRecord::Migration[7.0]
  def change
    create_table :coments do |t|
      t.text :content
      t.references :recommendation, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
