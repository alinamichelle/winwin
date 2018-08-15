require 'test_helper'

class WishesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get wishes_new_url
    assert_response :success
  end

end
