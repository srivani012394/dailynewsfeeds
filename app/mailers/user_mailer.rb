# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def confirmation_mail(user)
    @token = user.confirmation_token
    mail(to: user.email, subject: 'Please confirm your account!')
  end
end
