class QuoraCrawlerWorker
  include Sidekiq::Worker

  def perform(*args)
    FetchNews::QuoraPosts.pullData
  end
end
