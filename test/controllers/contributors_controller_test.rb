require 'test_helper'

class ContributorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    contributor = contributors(:one)
    # get :create, {:contributor => {:name => contributor.name, :email => contributor.email }}
    get :create, {:contributor => contributor.attributes}
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get show" do
    contributor = contributors(:one)
    get :show, {:id => contributor.id}
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
