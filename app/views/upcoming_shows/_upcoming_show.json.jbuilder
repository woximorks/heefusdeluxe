json.extract! upcoming_show, :id, :name, :start_time, :end_time, :created_at, :updated_at
json.url upcoming_show_url(upcoming_show, format: :json)
