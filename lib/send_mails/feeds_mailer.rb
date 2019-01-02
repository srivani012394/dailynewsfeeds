# frozen_string_literal: true

TODAY = Date.today

module SendMails
  class FeedsMailer
    def self.send_in_batches
      User.where.not(last_feed_on: TODAY, confirmed_at: nil).find_each(batch_size: 100) do |user|
        FeedMailer.daily_feed(user.email).deliver_later
        user.update(last_feed_on: TODAY)
      end
    end
  end
end
