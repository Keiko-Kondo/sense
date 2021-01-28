require 'test_helper'

class CurrentIssuesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get current_issues_index_url
    assert_response :success
  end

end
