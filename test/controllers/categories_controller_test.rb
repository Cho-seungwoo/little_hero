require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new_first" do
    get categories_new_first_url
    assert_response :success
  end

  test "should get new_second" do
    get categories_new_second_url
    assert_response :success
  end

  test "should get new_third" do
    get categories_new_third_url
    assert_response :success
  end

  test "should get index" do
    get categories_index_url
    assert_response :success
  end

  test "should get edit" do
    get categories_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get categories_destroy_url
    assert_response :success
  end

  test "should get update" do
    get categories_update_url
    assert_response :success
  end

  test "should get create" do
    get categories_create_url
    assert_response :success
  end

end
