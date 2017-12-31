# frozen_string_literal: true

require "rails_helper"

RSpec.describe MailingListContactsController, type: :routing do
  describe "routing" do

    it "routes to #new" do
      expect(get: "/").to route_to("mailing_list_contacts#new")
    end

    it "routes to #show" do
      expect(get: "/mailing_list_contacts/1").to(
        route_to("mailing_list_contacts#show", id: "1")
      )
    end

    it "routes to #create" do
      expect(post: "/mailing_list_contacts").to(
        route_to("mailing_list_contacts#create")
      )
    end
  end
end
