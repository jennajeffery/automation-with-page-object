require 'page-object'
include PageObject::PageFactory

Then(/^every result title should include the word I searched for$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  on_page(GoogleSearchResults) do |page|
    titles = page.titles #.titles is a method
    titles.each do |title| #|title| usually the single form of what you want - titles
      expect(title.downcase).to include "cat"
    end
  end
  # for each title
  # get the text of the title
  # verify that the title contains the word puppies
end

When(/^I search for a common phrase$/) do

  visit_page(GoogleHome) do |page|
    page.search_for 'cat'
  end
  # open the browser
  # go to google.com,
  # enter puppies
  # click search - code above takes care of all of this
end