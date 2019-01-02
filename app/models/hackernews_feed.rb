# frozen_string_literal: true

class HackernewsFeed < ApplicationRecord
  belongs_to :keyword
  validates :url, presence: true
  validates :title, presence: true
  validates_uniqueness_of :hacker_story_id

  validate :is_young_enough?

  private

  def is_young_enough?
    is_this_story_young?
  end
end
