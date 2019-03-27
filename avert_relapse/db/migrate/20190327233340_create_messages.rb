class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :text
      t.integer :account_id
      t.integer :contact_id

      t.timestamps
    end
  end
end