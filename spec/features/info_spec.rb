require "rails_helper"

feature "Info page" do
  scenario "Understanding the needs of a page" do
    stub_metadata_api_has_slug('apply-uk-visa', metadata_api_response_for_apply_uk_visa)

    visit "/info/apply-uk-visa"

    expect(page).to have_text("As non-EEA national")
    expect(page).to have_text("I need to apply for a UK visa")
    expect(page).to have_text("so that I can come to the UK to visit, study or work")
  end

  def stub_metadata_api_has_slug(*args)

  end
end
