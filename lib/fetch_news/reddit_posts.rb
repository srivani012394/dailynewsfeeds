# frozen_string_literal: true

require 'open-uri'
require 'json'

module FetchNews
  class RedditPosts
    class << self
      def pull_Data
        Keyword.all.each do |keyword|
          response = JSON.parse(open(
            "#{REDDIT_URL}?q=#{keyword.name}&sort=new&limit=5&t=1&type=link",
            'User-Agent' => 'Ruby/2.5.1'
          ).read)

          sub_reddits = response['data']['children']
          StoreFeeds::RedditPosts.store(sub_reddits, keyword.id)
        end
      end
    end
  end
end
