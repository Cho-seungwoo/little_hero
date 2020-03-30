require 'test_helper'

class RanksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ranks_index_url
    assert_response :success
  end

  test "should get sales" do
    get ranks_sales_url
    assert_response :success
  end

  test "should get grade" do
    get ranks_grade_url
    assert_response :success
  end

  test "should get votes" do
    get ranks_votes_url
    assert_response :success
  end

end
