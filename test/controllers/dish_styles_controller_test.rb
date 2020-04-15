require 'test_helper'

class DishStylesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get dish_styles_create_url
    assert_response :success
  end

end
