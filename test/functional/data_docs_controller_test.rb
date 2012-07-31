require 'test_helper'

class DataDocsControllerTest < ActionController::TestCase
  setup do
    @data_doc = data_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_doc" do
    assert_difference('DataDoc.count') do
      post :create, data_doc: @data_doc.attributes
    end

    assert_redirected_to data_doc_path(assigns(:data_doc))
  end

  test "should show data_doc" do
    get :show, id: @data_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_doc
    assert_response :success
  end

  test "should update data_doc" do
    put :update, id: @data_doc, data_doc: @data_doc.attributes
    assert_redirected_to data_doc_path(assigns(:data_doc))
  end

  test "should destroy data_doc" do
    assert_difference('DataDoc.count', -1) do
      delete :destroy, id: @data_doc
    end

    assert_redirected_to data_docs_path
  end
end
