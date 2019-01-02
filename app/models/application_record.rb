# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def is_this_story_young?
    errors.add(:self, 'too old story') if Date.today - written_at.to_date > 1
  end
end
