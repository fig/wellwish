# frozen_string_literal: true

class MailingListContact < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, format: { with: /.+@.+\..+/i }
end
