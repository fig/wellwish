# frozen_string_literal: true

require "rails_helper"

describe "mailing_list_contacts/new" do
  before(:each) do
    contact = MailingListContact.new(name: "Sheldon J. Johnson",
                                      email: "sheldon@wellwish.org")

    assign :mailing_list_contact, contact
  end

  it "renders new mailing_list_contact form" do
    render

    assert_select("form[action=?][method=?]",
                  mailing_list_contacts_path,
                  "post") do
                    assert_select "input[name=?]", "mailing_list_contact[name]"
                    assert_select "input[name=?]", "mailing_list_contact[email]"
                  end
  end

  it "includes a logo" do
    render

    expect(rendered).to match(/\<img src=.*logo.*\/\>/)
  end

  it "includes copy" do
    render

    expect(rendered).to include "todo"
  end

  it "includes a link to the github site" do
    render

    expect(rendered).to include "https://github.com/WellWish"
  end
end
