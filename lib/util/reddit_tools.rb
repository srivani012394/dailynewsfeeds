# frozen_string_literal: true

module Util
  module RedditTools
    def construct_param(sub_reddit, keyword_id)
      {
        title: sub_reddit['title'],
        url: sub_reddit['url'],
        written_at: Time.at(sub_reddit['created_utc']).to_datetime,
        author: sub_reddit['author'],
        keyword_id: keyword_id,
        sub_reddit_id: sub_reddit['subreddit_id']
      }
    end
  end
end
