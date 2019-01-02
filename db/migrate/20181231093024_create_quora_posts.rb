# frozen_string_literal: true

class CreateQuoraPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :quora_posts do |t|
      t.string :author
      t.text :title
      t.string :url
      t.belongs_to :keyword
      t.timestamps
    end
  end
end
