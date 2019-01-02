# frozen_string_literal: true

include Util::QuoraScrappingTools

module StoreFeeds
  class QuoraAnswers
    class << self
      def store(raw_data, keyword_id)
        at = 0
        raw_data[:total].times do
          param = {
            title: raw_data[:titles][at].text,
            url: raw_data[:anchors][at].href,
            author: extract_name(
              raw_data[:authors][at].text
            ),
            keyword_id: keyword_id
          }
          QuoraPost.create(param)
          at += 1
        end
      end
    end
  end
end
