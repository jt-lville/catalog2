require 'test_helper'

class DataNotesControllerTest < ActionController::TestCase
  setup do
    @data_note = data_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_note" do
    assert_difference('DataNote.count') do
      post :create, data_note: @data_note.attributes
    end

    assert_redirected_to data_note_path(assigns(:data_note))
  end

  test "should show data_note" do
    get :show, id: @data_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_note
    assert_response :success
  end

  test "should update data_note" do
    put :update, id: @data_note, data_note: @data_note.attributes
    assert_redirected_to data_note_path(assigns(:data_note))
  end

  test "should destroy data_note" do
    assert_difference('DataNote.count', -1) do
      delete :destroy, id: @data_note
    end

    assert_redirected_to data_notes_path
  end
end
