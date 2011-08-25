require 'test_helper'

class Event1sControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event1" do
    assert_difference('Event1.count') do
      post :create, :event1 => { }
    end

    assert_redirected_to event1_path(assigns(:event1))
  end

  test "should show event1" do
    get :show, :id => event1s(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => event1s(:one).to_param
    assert_response :success
  end

  test "should update event1" do
    put :update, :id => event1s(:one).to_param, :event1 => { }
    assert_redirected_to event1_path(assigns(:event1))
  end

  test "should destroy event1" do
    assert_difference('Event1.count', -1) do
      delete :destroy, :id => event1s(:one).to_param
    end

    assert_redirected_to event1s_path
  end
end
