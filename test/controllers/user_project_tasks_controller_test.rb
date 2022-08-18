require "test_helper"

class UserProjectTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_project_tasks_index_url
    assert_response :success
  end

  test "should get show" do
    get user_project_tasks_show_url
    assert_response :success
  end

  test "should get update" do
    get user_project_tasks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_project_tasks_destroy_url
    assert_response :success
  end

  test "should get create" do
    get user_project_tasks_create_url
    assert_response :success
  end
end
