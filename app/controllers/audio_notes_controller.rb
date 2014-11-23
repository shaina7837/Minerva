class AudioNotesController < ApplicationController
  before_action :set_audio_note, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @audio_notes = AudioNote.all
    respond_with(@audio_notes)
  end

  def show
    respond_with(@audio_note)
  end

  def new
    @audio_note = AudioNote.new
    respond_with(@audio_note)
  end

  def edit
  end

  def create
    @audio_note = AudioNote.new(audio_note_params)
    @audio_note.save
    respond_with(@audio_note)
  end

  def update
    @audio_note.update(audio_note_params)
    respond_with(@audio_note)
  end

  def destroy
    @audio_note.destroy
    respond_with(@audio_note)
  end

  private
    def set_audio_note
      @audio_note = AudioNote.find(params[:id])
    end

    def audio_note_params
      params.require(:audio_note).permit(:title, :url, :notebook_id)
    end
end
