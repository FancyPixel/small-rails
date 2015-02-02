class Story < ActiveRecord::Base

  belongs_to :user

  validates :body, presence: true
  validates :title, presence: true
  validates :user, presence: true

end
