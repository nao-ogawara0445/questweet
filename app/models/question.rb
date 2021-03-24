class Question < ApplicationRecord
 
  has_many :users
  has_many :comments

  with_options presence: true do
    validates :title
    validates :explain
  end
end
