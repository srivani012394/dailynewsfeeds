# frozen_string_literal: true

class CreateUserKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :user_keywords do |t|
      t.belongs_to :user
      t.belongs_to :keyword
    end
  end
end
