class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :yob
      t.boolean :is_active

      t.timestamps
    end
  end
end
