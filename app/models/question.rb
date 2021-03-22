class Question < ApplicationRecord
  has_many :user_questions
  has_many :users , through: :user_questions
  has_many :comments

  with_options presence: true do
    validates :title
    validates :explain
  end
end
