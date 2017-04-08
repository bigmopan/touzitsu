require 'test_helper'

class TozitsusControllerTest < ActionController::TestCase
  setup do
    @tozitsu = tozitsus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tozitsus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tozitsu" do
    assert_difference('Tozitsu.count') do
      post :create, tozitsu: { address: @tozitsu.address, content: @tozitsu.content, error: @tozitsu.error, kishu: @tozitsu.kishu, name: @tozitsu.name }
    end

    assert_redirected_to tozitsu_path(assigns(:tozitsu))
  end

  test "should show tozitsu" do
    get :show, id: @tozitsu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tozitsu
    assert_response :success
  end

  test "should update tozitsu" do
    patch :update, id: @tozitsu, tozitsu: { address: @tozitsu.address, content: @tozitsu.content, error: @tozitsu.error, kishu: @tozitsu.kishu, name: @tozitsu.name }
    assert_redirected_to tozitsu_path(assigns(:tozitsu))
  end

  test "should destroy tozitsu" do
    assert_difference('Tozitsu.count', -1) do
      delete :destroy, id: @tozitsu
    end

    assert_redirected_to tozitsus_path
  end
end
