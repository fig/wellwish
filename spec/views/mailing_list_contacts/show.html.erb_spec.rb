require 'rails_helper'

RSpec.describe "mailing_list_contacts/show", type: :view do
  before(:each) do
    @mailing_list_contact = assign(:mailing_list_contact, MailingListContact.create!(
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end
end
