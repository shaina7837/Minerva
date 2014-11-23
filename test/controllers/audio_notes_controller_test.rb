require 'test_helper'

class AudioNotesControllerTest < ActionController::TestCase
  setup do
    @audio_note = audio_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audio_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audio_note" do
    assert_difference('AudioNote.count') do
      post :create, audio_note: { notebook_id: @audio_note.notebook_id, title: @audio_note.title, url: @audio_note.url }
    end

    assert_redirected_to audio_note_path(assigns(:audio_note))
  end

  test "should show audio_note" do
    get :show, id: @audio_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audio_note
    assert_response :success
  end

  test "should update audio_note" do
    patch :update, id: @audio_note, audio_note: { notebook_id: @audio_note.notebook_id, title: @audio_note.title, url: @audio_note.url }
    assert_redirected_to audio_note_path(assigns(:audio_note))
  end

  test "should destroy audio_note" do
    assert_difference('AudioNote.count', -1) do
      delete :destroy, id: @audio_note
    end

    assert_redirected_to audio_notes_path
  end
end
