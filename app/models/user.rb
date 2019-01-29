# frozen_string_literal: true

class User < ApplicationRecord
  validates_uniqueness_of :email
  has_many :user_keywords, dependent: :destroy
  has_many :keywords, through: :user_keywords

  before_create :generate_confirmation_token
  after_create :send_confirmation_email

  private

  def generate_confirmation_token
    token = SecureRandom.urlsafe_base64(64)
    self.confirmation_token = token
  end

  def send_confirmation_email
    UserMailer.confirmation_mail(self).deliver_now
  end
end
