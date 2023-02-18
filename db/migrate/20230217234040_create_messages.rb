class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :messages
      t.belongs_to :user
      t.belongs_to :chat

      t.timestamps
    end
  end
end
