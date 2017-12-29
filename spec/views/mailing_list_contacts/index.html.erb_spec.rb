require 'rails_helper'

RSpec.describe "mailing_list_contacts/index", type: :view do
  before(:each) do
    assign(:mailing_list_contacts, [
      MailingListContact.create!(
        :name => "Name",
        :email => "Email"
      ),
      MailingListContact.create!(
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of mailing_list_contacts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
