# frozen_string_literal: true

class MailingListContactsController < ApplicationController
  before_action :set_mailing_list_contact, only: [:show, :update]

  def show
  end

  def new
    @mailing_list_contact = MailingListContact.new
  end

  def create
    @mailing_list_contact = MailingListContact.new(mailing_list_contact_params)

    if @mailing_list_contact.save
      redirect_to(@mailing_list_contact,
                  notice: "Mailing list contact was successfully created.")
    else
      render :new
    end
  end

  private

    def set_mailing_list_contact
      @mailing_list_contact = MailingListContact.find(params[:id])
    end

    def mailing_list_contact_params
      params.require(:mailing_list_contact).permit(:name, :email)
    end
end
