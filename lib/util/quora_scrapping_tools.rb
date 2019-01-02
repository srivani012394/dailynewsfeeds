# frozen_string_literal: true

module Util
  module QuoraScrappingTools
    def extract_objects_from_dom
      authors = spans(class: %w[answer_author light_gray]).to_a.first(RESULT_COUNT)
      titles = spans(class: 'ui_qtext_rendered_qtext').to_a.first(RESULT_COUNT)
      anchors = as(class: 'question_link').to_a.first(RESULT_COUNT)
      { titles: titles, anchors: anchors, authors: authors, total: authors.count }
    end

    def extract_name(full_string)
      full_string.gsub(/,.*/, '')
    end
  end
end
