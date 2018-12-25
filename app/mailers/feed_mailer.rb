class FeedMailer < ApplicationMailer
  def daily_feed(email)
    # @feed = GetFeeds::KeywordSpecific.for_user(email)
    @feeds = HackernewsFeed.last(5)
    mail(to: email, subject: 'You daily digest!')
  end
end
