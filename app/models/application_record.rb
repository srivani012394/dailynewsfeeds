class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def is_this_story_young?
    if Date.today - written_at.to_date > 1
      errors.add(:self, "too old story")
    end
  end

end
