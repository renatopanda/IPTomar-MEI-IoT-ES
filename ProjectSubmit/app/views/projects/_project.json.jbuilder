json.extract! project, :id, :title, :created_at, :updated_at, :resume, :github, :grade, :project_url, :date, :featured, :finished, :user_id, :subject_id
json.url project_url(project, format: :json)
