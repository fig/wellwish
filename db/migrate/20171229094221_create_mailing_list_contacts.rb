class CreateMailingListContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :mailing_list_contacts do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
