require 'rails_helper'

describe "user can find nearest fuel stations: " do
  it "user is taken to '/search' after clicking on 'Find Nearest Station'" do
    visit '/'
    click_on 'Find Nearest Station'
    expect(current_path).to eq('/search')
  end

  it "user can see the closes electric fuel station" do
    visit '/search'
    # save_and_open_page
    # expect(page).to have_content("Nearest Electric Fuel Staiton")
  end
end

# Then I should see the closest electric fuel station to me.
# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Distance
# - Access Times
