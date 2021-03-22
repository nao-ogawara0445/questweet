class CreateUserQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_questions do |t|
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
