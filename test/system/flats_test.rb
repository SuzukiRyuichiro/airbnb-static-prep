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
end
