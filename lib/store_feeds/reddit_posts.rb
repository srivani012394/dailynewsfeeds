module StoreFeeds
  class RedditPosts
    extend Util::RedditTools
    class << self
      def store(sub_reddits, keyword_id)
        sub_reddits.each do|sub_reddit|
          sub_reddit = sub_reddit["data"]
          param = construct_param(sub_reddit, keyword_id)
          RedditFeed.create(param)
        end
      end
    end
  end
end