class CreateConersationUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :conersation_users do |t|
      t.references :conversation, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
