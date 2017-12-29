require 'rails_helper'

RSpec.describe "MailingListContacts", type: :request do
  describe "GET /mailing_list_contacts" do
    it "works! (now write some real specs)" do
      get mailing_list_contacts_path
      expect(response).to have_http_status(200)
    end
  end
end
