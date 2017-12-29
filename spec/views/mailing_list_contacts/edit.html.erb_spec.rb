require 'rails_helper'

RSpec.describe "mailing_list_contacts/edit", type: :view do
  before(:each) do
    @mailing_list_contact = assign(:mailing_list_contact, MailingListContact.create!(
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit mailing_list_contact form" do
    render

    assert_select "form[action=?][method=?]", mailing_list_contact_path(@mailing_list_contact), "post" do

      assert_select "input[name=?]", "mailing_list_contact[name]"

      assert_select "input[name=?]", "mailing_list_contact[email]"
    end
  end
end
