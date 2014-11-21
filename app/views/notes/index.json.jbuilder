json.array!(@notes) do |note|
  json.extract! note, :id, :title, :content, :notebook_id
  json.url note_url(note, format: :json)
end
