# frozen_string_literal: true

require "rails_helper"

RSpec.describe "mailing_list_contacts/show", type: :view do
  before(:each) do
    contact = MailingListContact.create!(name: "Sheldon J. Johnson",
                                         email: "sheldon@wellwish.org")

    @mailing_list_contact = assign(:mailing_list_contact, contact)
  end

  it "renders attributes in <p>" do
    render

    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end
end
