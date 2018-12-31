require 'open-uri'
require 'json'

module FetchNews
  class Hackernews
    class << self
      def pullData
        Keyword.all.each do|keyword|
          hits = JSON.parse(open(
            "#{HACKERNEWS_URL}search_by_date?query=#{keyword.name}&tags=story"
            ).read)['hits'].first(ResultCount)

          StoreFeeds::Hackernews.store(hits, keyword.id)
        end
      end
    end
  end
end
