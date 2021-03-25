class Question < ApplicationRecord

  has_many :users
  has_many :comments, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :explain
  end
end
