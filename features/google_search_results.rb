require 'page-object'

class GoogleSearchResults
  include PageObject

  def titles

    @browser.divs(class: 'rc').collect do |div|
    div.h3.text

    #div class g - ask browser for divs that match class g
    #use watir to get divs(titles) from the browser

    #arr = Array.new #[]

    #arr.push("puppies")

    #return arr
    #[
        # "I like puppies", "puppies smell"
        # need to return an array of strings
    #]
      end
    end
  end
