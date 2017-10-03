require 'test_helper'

class InquriesControllerTest < ActionController::TestCase
  setup do
    @inqury = inquries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inquries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inqury" do
    assert_difference('Inqury.count') do
      post :create, inqury: { brand: @inqury.brand, budget: @inqury.budget, email: @inqury.email, name: @inqury.name, seeking: @inqury.seeking, type: @inqury.type }
    end

    assert_redirected_to inqury_path(assigns(:inqury))
  end

  test "should show inqury" do
    get :show, id: @inqury
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inqury
    assert_response :success
  end

  test "should update inqury" do
    patch :update, id: @inqury, inqury: { brand: @inqury.brand, budget: @inqury.budget, email: @inqury.email, name: @inqury.name, seeking: @inqury.seeking, type: @inqury.type }
    assert_redirected_to inqury_path(assigns(:inqury))
  end

  test "should destroy inqury" do
    assert_difference('Inqury.count', -1) do
      delete :destroy, id: @inqury
    end

    assert_redirected_to inquries_path
  end
end
