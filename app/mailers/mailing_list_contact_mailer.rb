# frozen_string_literal: true

class MailingListContactMailer < ApplicationMailer
  default from: "notifications@wellwish.org"

  def welcome(mailing_list_contact)
    @mailing_list_contact = mailing_list_contact
    mail(to: @mailing_list_contact.email, subject: "Welcome to WellWish")
  end
end
