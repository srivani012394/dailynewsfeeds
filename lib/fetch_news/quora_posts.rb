module FetchNews
  class QuoraPosts
    class << self
      def pullData
        browser = Watir::Browser.new
        Keyword.all.each do|keyword|
          browser.goto "#{QUORA_URL}?q=#{keyword.name}&time=day&type=answer"
          browser.extend(Util::QuoraScrappingTools)
          scrapped_responses = browser.extract_objects_from_dom
          StoreFeeds::QuoraAnswers.store(scrapped_responses, keyword.id)
        end
      end
    end
  end
end
