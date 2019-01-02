# frozen_string_literal: true

class HnCrawlerWorker
  include Sidekiq::Worker

  def perform(*_args)
    FetchNews::Hackernews.pull_Data
  end
end
