class CreateSessions < ActiveRecord::Migration[7.2]
  def change
    create_table :sessions do |t|
      t.references :user, foreign_key: true
      t.string :session_token
      
      t.timestamps
    end
  end
end
