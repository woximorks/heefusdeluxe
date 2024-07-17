json.extract! project, :id, :project_title, :project_url, :project_description, :project_image_url, :created_at, :updated_at
json.url project_url(project, format: :json)
