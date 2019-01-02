# frozen_string_literal: true

class RedditCrawlerWorker
  include Sidekiq::Worker

  def perform(*_args)
    FetchNews::RedditPosts.pull_Data
  end
end
