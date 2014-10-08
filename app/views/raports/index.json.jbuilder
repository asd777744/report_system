json.array!(@raports) do |raport|
  json.extract! raport, :id, :meeting_id, :name, :module, :this_week_work, :need_help, :next_week_work, :share_tech
  json.url raport_url(raport, format: :json)
end
