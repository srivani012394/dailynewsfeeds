module Util
  module QuoraScrappingTools
    def extract_objects_from_dom
      authors = spans(class: ["answer_author", "light_gray"]).to_a.first(ResultCount)
      titles = spans(class: "ui_qtext_rendered_qtext").to_a.first(ResultCount)
      anchors = as(class: "question_link").to_a.first(ResultCount)
      return { titles: titles, anchors: anchors, authors: authors, total: authors.count }
    end

    def extract_name(full_string)
      full_string.gsub(/,.*/, '')
    end
  end
end
