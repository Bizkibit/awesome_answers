class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :question_id, uniqueness: {scope: :user_id, message: 'has already been voted on by yourself'}
  validates :is_up, presence: true
end
