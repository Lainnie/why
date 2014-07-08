class Answer < ActiveRecord::Base

  include Interest

  belongs_to :question
end
