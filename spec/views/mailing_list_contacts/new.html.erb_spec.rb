require 'rails_helper'

RSpec.describe "mailing_list_contacts/new", type: :view do
  before(:each) do
    assign(:mailing_list_contact, MailingListContact.new(
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new mailing_list_contact form" do
    render

    assert_select "form[action=?][method=?]", mailing_list_contacts_path, "post" do

      assert_select "input[name=?]", "mailing_list_contact[name]"

      assert_select "input[name=?]", "mailing_list_contact[email]"
    end
  end
end
