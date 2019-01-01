class User < ApplicationRecord
  validates_uniqueness_of :email
  has_many :user_keywords
  has_many :keywords, through: :user_keywords

  before_save :generate_confirmation_token
  after_save :send_confirmation_email
  private

  def generate_confirmation_token
    return unless confirmed_at == nil
    token = SecureRandom.urlsafe_base64(64)
    self.confirmation_token = token
  end

  def send_confirmation_email
    UserMailer.confirmation_mail(self).deliver_later
  end
end
