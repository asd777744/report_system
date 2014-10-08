require 'test_helper'

class RaportsControllerTest < ActionController::TestCase
  setup do
    @raport = raports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raport" do
    assert_difference('Raport.count') do
      post :create, raport: { meeting_id: @raport.meeting_id, module: @raport.module, name: @raport.name, need_help: @raport.need_help, next_week_work: @raport.next_week_work, share_tech: @raport.share_tech, this_week_work: @raport.this_week_work }
    end

    assert_redirected_to raport_path(assigns(:raport))
  end

  test "should show raport" do
    get :show, id: @raport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raport
    assert_response :success
  end

  test "should update raport" do
    patch :update, id: @raport, raport: { meeting_id: @raport.meeting_id, module: @raport.module, name: @raport.name, need_help: @raport.need_help, next_week_work: @raport.next_week_work, share_tech: @raport.share_tech, this_week_work: @raport.this_week_work }
    assert_redirected_to raport_path(assigns(:raport))
  end

  test "should destroy raport" do
    assert_difference('Raport.count', -1) do
      delete :destroy, id: @raport
    end

    assert_redirected_to raports_path
  end
end
