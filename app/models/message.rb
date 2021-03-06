class Message < ActiveRecord::Base
  CATEGORY_TYPES = ["Sale", "Jobs", "Lost & Found", "General", "Alert"]
  belongs_to :user
  has_many :comments, :dependent => :destroy
  acts_as_votable
end
