class Answer < ActiveRecord::Base

  include Interest

  validate :content, presence: true
  validate :content, length: { in: 10..500 }
  validate :interest, numericality: { only_integer: true }

  belongs_to :question
end
