class CreateHackernewsFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :hackernews_feeds do |t|
      t.datetime :written_at
      t.text :title
      t.string :url
      t.string :author
      t.belongs_to :keyword
      t.timestamps
    end
  end
end
