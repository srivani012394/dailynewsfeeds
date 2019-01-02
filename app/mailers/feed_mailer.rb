# frozen_string_literal: true

class FeedMailer < ApplicationMailer
  def daily_feed(email)
    @feeds = GetFeeds::KeywordSpecific.news_for_user(email)
    mail(to: email, subject: 'You daily digest!')
  end
end
