class Keyword < ApplicationRecord
  has_many :hackernews_feeds
  has_many :reddit_feeds
  has_many :quora_posts
end
