json.extract! project, :id, :title, :description, :body, :image, :project_location, :source_location, :featured, :created_at, :updated_at
json.url project_url(project, format: :json)