require 'rails_helper'

describe "user can find nearest fuel stations: " do
  it "user is taken to '/search' after clicking on 'Find Nearest Station'" do
    visit '/'
    click_on 'Find Nearest Station'
    expect(current_path).to eq('/search')
  end
end
# As a user
# When I visit "/"
# And I select "Turing" form the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.
