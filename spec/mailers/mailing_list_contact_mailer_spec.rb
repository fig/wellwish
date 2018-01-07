# frozen_string_literal: true

require "rails_helper"

RSpec.describe MailingListContactMailer, type: :mailer do
  describe "welcome" do
    let(:mailing_list_contact) { create(:mailing_list_contact) }
    let(:mail) { MailingListContactMailer.welcome(mailing_list_contact) }

    it "renders the headers" do
      expect(mail.subject).to include("Welcome")
      expect(mail.to).to eq(mailing_list_contact.email)
      expect(mail.from).to eq("notifications@wellwish.org")
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end
end
