module GetFeeds
  class KeywordSpecific
    class << self
      def news_for_user(email)
        keywords = User.where(email: email).last.keywords
        feeds = []
        keywords.each do|keyword|
          feeds << {topic: keyword.name, news: keyword.hackernews_feeds}
        end
        feeds
      end
    end
  end
end
