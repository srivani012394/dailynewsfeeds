class AddHackerStoryIdToHackernewsFeed < ActiveRecord::Migration[5.2]
  def change
    add_column :hackernews_feeds, :hacker_story_id, :string
  end
end
