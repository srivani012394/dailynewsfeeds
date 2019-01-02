# frozen_string_literal: true

class QuoraCrawlerWorker
  include Sidekiq::Worker

  def perform(*_args)
    FetchNews::QuoraPosts.pull_Data
  end
end
