require 'test_helper'

class RecieversControllerTest < ActionController::TestCase
  setup do
    @reciever = recievers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recievers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reciever" do
    assert_difference('Reciever.count') do
      post :create, reciever: { user_id: @reciever.user_id }
    end

    assert_redirected_to reciever_path(assigns(:reciever))
  end

  test "should show reciever" do
    get :show, id: @reciever
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reciever
    assert_response :success
  end

  test "should update reciever" do
    patch :update, id: @reciever, reciever: { user_id: @reciever.user_id }
    assert_redirected_to reciever_path(assigns(:reciever))
  end

  test "should destroy reciever" do
    assert_difference('Reciever.count', -1) do
      delete :destroy, id: @reciever
    end

    assert_redirected_to recievers_path
  end
end
