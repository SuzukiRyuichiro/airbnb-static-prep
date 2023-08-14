require 'application_system_test_case'

class FlatsTest < ApplicationSystemTestCase
  test 'visiting home page should print out title' do
    visit '/'

    assert_selector 'h1', text: 'Flats'
  end

  test 'visiting home page should show list of flats' do
    visit '/'

    assert_selector 'ul li'
  end

  test 'visiting individual flat page print the name of the flat' do
    visit '/flats/145'

    assert_selector 'h1', text: 'Charm at the Steps of the Sacre Coeur/Montmartre'
  end

  test 'visiting individual flat page display the image of the flat' do
    visit '/flats/145'

    assert_selector 'img'
  end
end
