module Util
  module HackernewsTools
    def construct_param(hit, keyword_id)
      {
        title: hit['title'],
        url: hit['url'],
        written_at: hit['created_at'],
        author: hit['author'],
        keyword_id: keyword_id,
        hacker_story_id: hit['objectID']
      }
    end
  end
end