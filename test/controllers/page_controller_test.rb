require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test 'should get Home' do
    get page_Home_url
    assert_response :success
  end
end
