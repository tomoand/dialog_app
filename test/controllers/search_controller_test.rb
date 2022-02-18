require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search_index" do
    get search_search_index_url
    assert_response :success
  end
end
