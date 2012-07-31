require 'test_helper'

class DataStoresControllerTest < ActionController::TestCase
  setup do
    @data_store = data_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_store" do
    assert_difference('DataStore.count') do
      post :create, data_store: @data_store.attributes
    end

    assert_redirected_to data_store_path(assigns(:data_store))
  end

  test "should show data_store" do
    get :show, id: @data_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_store
    assert_response :success
  end

  test "should update data_store" do
    put :update, id: @data_store, data_store: @data_store.attributes
    assert_redirected_to data_store_path(assigns(:data_store))
  end

  test "should destroy data_store" do
    assert_difference('DataStore.count', -1) do
      delete :destroy, id: @data_store
    end

    assert_redirected_to data_stores_path
  end
end
