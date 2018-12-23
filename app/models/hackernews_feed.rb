class HackernewsFeed < ApplicationRecord
  belongs_to :keyword
  validates :url, presence: true
  validates :title, presence: true
  validates_uniqueness_of :hacker_story_id

  validate :is_young_enough?

  private

  def is_young_enough?
    if Date.today - written_at.to_date > 1
      errors.add(:hackernews_feed, "too old story")
    end
  end
end

