# frozen_string_literal: true

class CreateRedditFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :reddit_feeds do |t|
      t.belongs_to :keyword
      t.datetime :written_at
      t.string :sub_reddit_id
      t.text :title
      t.string :url
      t.string :author
      t.timestamps
    end
  end
end
