module StoreFeeds
  class Hackernews
    extend Util::HackernewsTools
    class << self
      def store(hits, keyword_id)
        hits.each do|hit|  
          param = construct_param(hit, keyword_id)
          HackernewsFeed.create(param)
        end
      end
    end
  end
end
