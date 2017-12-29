require "rails_helper"

RSpec.describe MailingListContactsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mailing_list_contacts").to route_to("mailing_list_contacts#index")
    end

    it "routes to #new" do
      expect(:get => "/mailing_list_contacts/new").to route_to("mailing_list_contacts#new")
    end

    it "routes to #show" do
      expect(:get => "/mailing_list_contacts/1").to route_to("mailing_list_contacts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mailing_list_contacts/1/edit").to route_to("mailing_list_contacts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mailing_list_contacts").to route_to("mailing_list_contacts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mailing_list_contacts/1").to route_to("mailing_list_contacts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mailing_list_contacts/1").to route_to("mailing_list_contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mailing_list_contacts/1").to route_to("mailing_list_contacts#destroy", :id => "1")
    end

  end
end
