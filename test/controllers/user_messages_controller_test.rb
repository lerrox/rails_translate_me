require 'test_helper'

class UserMessagesControllerTest < ActionController::TestCase
  setup do
    @user_message = user_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_message" do
    assert_difference('UserMessage.count') do
      post :create, user_message: { email: @user_message.email, message: @user_message.message, name: @user_message.name }
    end

    assert_redirected_to user_message_path(assigns(:user_message))
  end

  test "should show user_message" do
    get :show, id: @user_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_message
    assert_response :success
  end

  test "should update user_message" do
    patch :update, id: @user_message, user_message: { email: @user_message.email, message: @user_message.message, name: @user_message.name }
    assert_redirected_to user_message_path(assigns(:user_message))
  end

  test "should destroy user_message" do
    assert_difference('UserMessage.count', -1) do
      delete :destroy, id: @user_message
    end

    assert_redirected_to user_messages_path
  end
end
