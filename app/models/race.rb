class Race < ActiveRecord::Base

  belongs_to :user

  validates :user, presence: true
  validates :race_result, presence: true



end