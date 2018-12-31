class RedditFeed < ApplicationRecord
  belongs_to :keyword
  validates :url, presence: true
  validates :title, presence: true
  validates_uniqueness_of :sub_reddit_id

  validate :is_young_enough?

  private

  def is_young_enough?
    is_this_story_young?
  end
end
