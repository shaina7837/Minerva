json.array!(@audio_notes) do |audio_note|
  json.extract! audio_note, :id, :title, :url, :notebook_id
  json.url audio_note_url(audio_note, format: :json)
end
