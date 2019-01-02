# frozen_string_literal: true

class FeedMailerWorker
  include Sidekiq::Worker

  def perform(*_args)
    SendMails::FeedsMailer.send_in_batches
  end
end
