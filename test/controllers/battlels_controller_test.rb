require 'test_helper'

class BattlelsControllerTest < ActionController::TestCase
  setup do
    @battlel = battlels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:battlels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create battlel" do
    assert_difference('Battlel.count') do
      post :create, battlel: { day: @battlel.day, hour: @battlel.hour, pet1: @battlel.pet1, pet2: @battlel.pet2, winner: @battlel.winner }
    end

    assert_redirected_to battlel_path(assigns(:battlel))
  end

  test "should show battlel" do
    get :show, id: @battlel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @battlel
    assert_response :success
  end

  test "should update battlel" do
    patch :update, id: @battlel, battlel: { day: @battlel.day, hour: @battlel.hour, pet1: @battlel.pet1, pet2: @battlel.pet2, winner: @battlel.winner }
    assert_redirected_to battlel_path(assigns(:battlel))
  end

  test "should destroy battlel" do
    assert_difference('Battlel.count', -1) do
      delete :destroy, id: @battlel
    end

    assert_redirected_to battlels_path
  end
end
