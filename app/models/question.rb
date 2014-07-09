class Question < ActiveRecord::Base
  default_scope { includes(:answers) }

  include Interest

  validates :title,
            :content,
            presence: true
  validates :title, length: { in: 10..100 }
  validates :content, length: { in: 10..500 }
  validates :view,
            :interest,
            numericality: { only_integer: true }
  validates :active, inclusion: { in: [true, false] }

  has_many :answers
  searchable do
    text :title, :content
  end
end
