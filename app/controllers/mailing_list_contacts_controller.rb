class MailingListContactsController < ApplicationController
  before_action :set_mailing_list_contact, only: [:show, :edit, :update, :destroy]

  # GET /mailing_list_contacts
  # GET /mailing_list_contacts.json
  def index
    @mailing_list_contacts = MailingListContact.all
  end

  # GET /mailing_list_contacts/1
  # GET /mailing_list_contacts/1.json
  def show
  end

  # GET /mailing_list_contacts/new
  def new
    @mailing_list_contact = MailingListContact.new
  end

  # GET /mailing_list_contacts/1/edit
  def edit
  end

  # POST /mailing_list_contacts
  # POST /mailing_list_contacts.json
  def create
    @mailing_list_contact = MailingListContact.new(mailing_list_contact_params)

    respond_to do |format|
      if @mailing_list_contact.save
        format.html { redirect_to @mailing_list_contact, notice: 'Mailing list contact was successfully created.' }
        format.json { render :show, status: :created, location: @mailing_list_contact }
      else
        format.html { render :new }
        format.json { render json: @mailing_list_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailing_list_contacts/1
  # PATCH/PUT /mailing_list_contacts/1.json
  def update
    respond_to do |format|
      if @mailing_list_contact.update(mailing_list_contact_params)
        format.html { redirect_to @mailing_list_contact, notice: 'Mailing list contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @mailing_list_contact }
      else
        format.html { render :edit }
        format.json { render json: @mailing_list_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailing_list_contacts/1
  # DELETE /mailing_list_contacts/1.json
  def destroy
    @mailing_list_contact.destroy
    respond_to do |format|
      format.html { redirect_to mailing_list_contacts_url, notice: 'Mailing list contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailing_list_contact
      @mailing_list_contact = MailingListContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mailing_list_contact_params
      params.require(:mailing_list_contact).permit(:name, :email)
    end
end
