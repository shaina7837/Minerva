json.array!(@timetables) do |timetable|
  json.extract! timetable, :id, :name, :time, :work
  json.url timetable_url(timetable, format: :json)
end
