class HnCrawlerWorker
  include Sidekiq::Worker

  def perform(*args)
    FetchNews::Hackernews.pullData
  end
end
CronHnCrawlerWorker = HnCrawlerWorker
