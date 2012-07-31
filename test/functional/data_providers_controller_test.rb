require 'test_helper'

class DataProvidersControllerTest < ActionController::TestCase
  setup do
    @data_provider = data_providers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_providers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_provider" do
    assert_difference('DataProvider.count') do
      post :create, data_provider: @data_provider.attributes
    end

    assert_redirected_to data_provider_path(assigns(:data_provider))
  end

  test "should show data_provider" do
    get :show, id: @data_provider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_provider
    assert_response :success
  end

  test "should update data_provider" do
    put :update, id: @data_provider, data_provider: @data_provider.attributes
    assert_redirected_to data_provider_path(assigns(:data_provider))
  end

  test "should destroy data_provider" do
    assert_difference('DataProvider.count', -1) do
      delete :destroy, id: @data_provider
    end

    assert_redirected_to data_providers_path
  end
end
