class RedditCrawlerWorker
  include Sidekiq::Worker

  def perform(*args)
    FetchNews::RedditPosts.pullData
  end
end
