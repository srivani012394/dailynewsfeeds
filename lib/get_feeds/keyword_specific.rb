module GetFeeds
  class KeywordSpecific
    class << self
      def news_for_user(email)
        keywords = User.where(email: email).last.keywords
        feeds = {
          hackernews: [],
          quora: [],
          reddit: []
        }
        keywords.each do|keyword|
          feeds[:hackernews] << { topic: keyword.name, news: keyword.hackernews_feeds }
          feeds[:quora] << { topic: keyword.name, news: keyword.quora_posts }
          feeds[:reddit] << { topic: keyword.name, news: keyword.reddit_feeds }
        end
        feeds
      end
    end
  end
end
