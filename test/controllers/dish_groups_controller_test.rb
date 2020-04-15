require 'test_helper'

class DishGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get dish_groups_create_url
    assert_response :success
  end

end
