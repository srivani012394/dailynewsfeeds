class FeedMailerWorker
  include Sidekiq::Worker

  def perform(*args)
    SendMails::FeedsMailer.send_in_batches
  end
end
