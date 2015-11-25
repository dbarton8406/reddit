class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :votes
  acts_as_votable
  belongs_to :user
  max_paginates_per 10
  def score
     (self.get_upvotes.size - self.get_downvotes.size)
  end
end
