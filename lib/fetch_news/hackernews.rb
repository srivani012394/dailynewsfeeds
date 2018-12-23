require 'open-uri'
require 'json'

module FetchNews
  class Hackernews
    def self.pullData
      Keyword.all.each do|keyword|
        hits = JSON.parse(open("https://hn.algolia.com/api/v1/search_by_date?query=#{keyword.name}&tags=story").read)['hits']
        hits.first(5).each do|hit|  
          params = {title: hit['title'], url: hit['url'],
            written_at: hit['created_at'], author: hit['author'],
            keyword_id: keyword.id, hacker_story_id: hit['objectID']}
          HackernewsFeed.create(params)
        end
      end
    end
  end
end
