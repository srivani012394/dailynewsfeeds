# frozen_string_literal: true

class AddKeyword < SeedMigration::Migration
  TECHS = ['rails', 'devops', 'cloud', 'ai', 'ruby', 'react.js', 'android'].freeze
  def up
    TECHS.each do |tech|
      record = Keyword.new(name: tech)
      record.save
    end
  end

  def down
    Keyword.destroy_all
    puts 'Keywords deleted successfully!'
  end
end
