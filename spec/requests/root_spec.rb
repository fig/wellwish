# frozen_string_literal: true

require "rails_helper"

describe "Root page" do
  it "Contains the string 'WellWish'" do
    get "/"
    expect(response.body).to include("WellWish")
  end
end
