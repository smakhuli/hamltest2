require 'test_helper'

class BethelstudentsControllerTest < ActionController::TestCase
  setup do
    @bethelstudent = bethelstudents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bethelstudents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bethelstudent" do
    assert_difference('Bethelstudent.count') do
      post :create, bethelstudent: @bethelstudent.attributes
    end

    assert_redirected_to bethelstudent_path(assigns(:bethelstudent))
  end

  test "should show bethelstudent" do
    get :show, id: @bethelstudent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bethelstudent
    assert_response :success
  end

  test "should update bethelstudent" do
    put :update, id: @bethelstudent, bethelstudent: @bethelstudent.attributes
    assert_redirected_to bethelstudent_path(assigns(:bethelstudent))
  end

  test "should destroy bethelstudent" do
    assert_difference('Bethelstudent.count', -1) do
      delete :destroy, id: @bethelstudent
    end

    assert_redirected_to bethelstudents_path
  end
end
