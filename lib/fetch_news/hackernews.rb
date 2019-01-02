# frozen_string_literal: true

require 'open-uri'
require 'json'

module FetchNews
  class Hackernews
    class << self
      def pull_Data
        Keyword.all.each do |keyword|
          hits = JSON.parse(open(
            "#{HACKERNEWS_URL}search_by_date?query=#{keyword.name}&tags=story"
          ).read)['hits'].first(RESULT_COUNT)

          StoreFeeds::Hackernews.store(hits, keyword.id)
        end
      end
    end
  end
end
