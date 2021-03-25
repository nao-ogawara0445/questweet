class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title,null: false
      t.text   :explain,null: false
      t.integer :user_id,null: false
      t.timestamps
    end
  end
end
