# frozen_string_literal: true

require "rails_helper"

describe "splash/index" do
  it "includes a logo" do
    render
    expect(rendered).to match /\<img src=.*logo.*\/\>/
  end

  it "includes copy" do
    render
    expect(rendered).to include "WellWish is"
  end

  it "includes an email form field" do
    render
    expect(rendered).to match /<form.*>/
    expect(rendered).to include "email"
    expect(rendered).to include "submit"
  end

  it "includes a link to the github site" do
    render
    expect(rendered).to include "https://github.com/WellWish/wellwish"
  end
end
